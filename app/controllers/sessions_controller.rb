class SessionsController < ApplicationController

	def new
  	end

  	def create
  		user = User.find_by(email: params[:session][:email].downcase)
	    if user && user.authenticate(params[:session][:password])
	      # Sign the user in and redirect to the user's show page.
	      sign_in user # it must be a function in session_helper.rb
      	  redirect_to user
	    else
	      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
	      render 'new'
	    end
  	end

  	def destroy
  		sign_out
    	redirect_to root_url
  	end

end
