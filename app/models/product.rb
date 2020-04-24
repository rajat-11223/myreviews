class Product < ApplicationRecord

	mount_uploader :image, AvatarUploader

	belongs_to :master_category
	belongs_to :user
	has_many :post_reviews

end
