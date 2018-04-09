class AddUserIdToSunGlasses < ActiveRecord::Migration[5.1]
  def change
    add_column :sun_glasses, :user_id, :integer
  end
end
