class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :email
    	t.string :password
    	t.string :phone
    	t.string :address
    	t.boolean :gender, default: false
    end
  end
end
