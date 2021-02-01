class AccessController < ApplicationController
	
	def index
	end

	def login
	end

	def logout
		flash[:notice] = "Logged out "
		redirect_to(action: "login")
	end

	def attempt_login 
		if params[:email].present? && params[:password].present?
           found_user = User1.where(:email => params[:email]).first
            if found_user
            	autherized_user = found_user.authenticate(params[:password])
            end

            if autherized_user
            	flash[:notice] = "you are now logged in"
            	redirect_to(action: 'index')
            else
            	flash[:notice] = "Invalid Username/password"
            	redirect_to(action: 'login')
            end
        end


	end


end
