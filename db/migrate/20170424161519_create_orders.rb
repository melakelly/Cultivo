class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :title
      t.float :price
      t.string :amount
      t.string :username
      t.string :firstName
      t.string :lastName
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phoneNumber
      t.string :comment

      t.timestamps null: false
    end
  end
end
