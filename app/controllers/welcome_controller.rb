class WelcomeController < ApplicationController
  def index

		blog_user_id = params[:blog_user_id]
		set_user_id_which_created_blog(blog_user_id) if !blog_user_id.blank?

  end
end
