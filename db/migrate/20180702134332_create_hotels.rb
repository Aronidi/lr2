class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :title
      t.text :text
      t.boolean :breakfast
      t.boolean :wifi
      t.integer :rating
      t.string :photo
      t.integer :price
      t.string :adress
      t.string :number

      t.timestamps
    end
  end
end
