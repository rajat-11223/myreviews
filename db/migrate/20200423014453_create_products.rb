class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
    	t.references :master_category, foreign_key: true
    	t.references :user, foreign_key: true
    	t.string :name
    	t.string :image
    	t.string :description

      t.timestamps
    end
  end
end
