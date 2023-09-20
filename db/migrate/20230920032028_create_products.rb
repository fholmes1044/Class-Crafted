class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :title
      t.string :image
      t.string :description
      t.integer :cost 
      t.string :category
      t.string :location
      t.integer :quantity
      t.integer :inventory

      t.timestamps
    end
  end
end
