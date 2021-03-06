class SessionsController < ApplicationController
  def new
  end

  def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in(user)
			set_user_id_which_created_blog(user.id)
			redirect_to root_path
		else
			flash.now[:error] = "Неверная комбинация email/password"
			render "new"
		end
  end

  def destroy
		sign_out()
		redirect_to root_path
  end
end
