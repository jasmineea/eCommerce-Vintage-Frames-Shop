class CreateSunGlasses < ActiveRecord::Migration[5.1]
  def change
    create_table :sun_glasses do |t|
      t.string :brand
      t.string :frame
      t.text :description
      t.string :condition
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end
