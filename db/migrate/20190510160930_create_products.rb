class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.string :image_5
      t.string :collection_date
      t.boolean :is_featured, default: false
      t.boolean :is_sold_out, default: false

      t.timestamps
    end
  end
end
