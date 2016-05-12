class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.float :lat
      t.float :longi
      t.string :address
      t.string :type
      t.string :classOf

      t.timestamps null: false
    end
  end
end
