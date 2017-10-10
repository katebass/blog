module AuthenticationHelper
	def savesession(user)
		session[:user_id] = user.id
	end
	def sessiondestroy
		session[:user_id] = nil
	end 
	def is_logged? 
		!session[:user_id].nil?
	end
	def current_user 
		Author.find(session[:user_id])
	end 
	def require_login
		unless is_logged? 
			redirect_to login_path
		end 
	end 
end
