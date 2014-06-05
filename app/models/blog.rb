class Blog < ActiveRecord::Base

	has_many :comments, dependent: :destroy
	belongs_to :user

	validates :title, presence: true, length: { maximum: 100 }
	validates :text, presence: true
	validates :user_id, presence: true

end
