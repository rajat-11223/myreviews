class CreatePostReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :post_reviews do |t|
    	t.references :user, foreign_key: true
    	t.references :product, foreign_key: true
    	t.string :rating 
    	t.string :message 

      t.timestamps
    end
  end
end
