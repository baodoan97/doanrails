class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.integer :price
    	t.integer :quantity
    	t.string :description
    	t.integer :size
    end
  end
end
