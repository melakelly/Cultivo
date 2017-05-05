class CreateProduces < ActiveRecord::Migration
  def change
    create_table :produces do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :img_url

      t.timestamps null: false
    end
  end
end
