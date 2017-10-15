class ArticleController < ApplicationController
	def index
		@article = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params.require(:article)
			.permit(:title, :content))
		@article.author_id = current_user.id
		if @article.save
			flash[:success] = "Success"
			redirect_to articles_path, :flash => {:success => "запись создана!"}
		else
			render 'new'
		end
	end

	def edit
	  @article = Article.find(params[:id])
	end


	def update
	  @article = Article.find(params[:id])
	 
	  if @article.update(params.require(:article)
	  		.permit(:title, :content))
	    redirect_to articles_path, :flash => {:success => "запись обновлена!"}
	  else
	    render 'edit'
	  end
	end
end
