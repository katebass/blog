class ArticleController < ApplicationController
	def index
		@article = Article.all
	end
end
