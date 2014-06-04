module BlogsHelper

# Вывести все посты блога пользователя, который смотрим
	def	get_blogs()
		user_id_which_created_blog = get_user_id_which_created_blog()
		if !user_id_which_created_blog.blank?
			user = User.find(get_user_id_which_created_blog())
			blogs = Blog.where(user_id: user.id)
		end
		return blogs
	end

# Записать id пользователя, чем блог смотрим
	def set_user_id_which_created_blog(user_id_which_created_blog)
		cookies.permanent[:user_id_which_created_blog] = user_id_which_created_blog
	end

#Создатель блога?
	def created_blog?()
		if signed_in?()
			current_user().id.to_i == cookies[:user_id_which_created_blog].to_i #blog.user_id	
		end	
	end

	def get_user_which_created_blog()
		user_id_which_created_blog = get_user_id_which_created_blog()
		if !user_id_which_created_blog.blank?
			user = User.find(get_user_id_which_created_blog())
		end
		return user
	end

	def get_user_id_which_created_blog()
		blog_user_id = cookies[:user_id_which_created_blog] #узнаем, чем блог сейчас мы смотрим
		if !blog_user_id.blank?
			blog_user_id = blog_user_id.to_i
		end
		return blog_user_id
	end

end
