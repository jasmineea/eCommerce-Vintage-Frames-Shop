class AddImageToSunGlasses < ActiveRecord::Migration[5.1]
  def change
    add_column :sun_glasses, :image, :string
  end
end
