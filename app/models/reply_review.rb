class ReplyReview < ApplicationRecord

    belongs_to :post_review
	belongs_to :user

end
