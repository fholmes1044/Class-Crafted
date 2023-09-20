class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :summary 
      t.integer :rating
      t.date :date
      

      t.timestamps
    end
  end
end
