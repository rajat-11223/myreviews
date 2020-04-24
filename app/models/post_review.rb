class PostReview < ApplicationRecord

belongs_to :user
belongs_to :product
has_many :reply_reviews 

end
