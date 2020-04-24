class CreateReplyReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reply_reviews do |t|

    	t.references :user, foreign_key: true
    	t.references :post_review, foreign_key: true
    	t.string :message

      t.timestamps
    end
  end
end
