class AuthenticationController < ApplicationController
	
	def login

	end

	def logout
		sessiondestroy
		redirect_to login_path
	end

	def authenticate
		permitted = params.permit :email, :password
		user = Author.where(:email => permitted[:email]).take 
		if user
			if user.authenticate permitted[:password]
				savesession(user)
				redirect_to action: "home", controller: "pages"
			end
		else
			return
		end 
	end

end
