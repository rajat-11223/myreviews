class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|

    	t.string :name
    	t.string :image
    	t.string :dob
    	t.string :phone
    	t.string :gender


      t.timestamps
    end
  end
end
