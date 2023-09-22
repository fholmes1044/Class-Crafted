class RemoveLastColumnFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :seller_id
  end
end
