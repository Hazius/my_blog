class Comment < ActiveRecord::Base

	belongs_to :blog

	default_scope -> { order('created_at DESC') }

	validates :name, presence: true, length: { maximum: 50 }
	validates :comment, presence: true
	validates :blog_id, presence: true

end
