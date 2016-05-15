class CreateHealthFacilities < ActiveRecord::Migration
  def change
    create_table :health_facilities do |t|
      t.float :lat
      t.float :longi
      t.string :address
      t.string :typeOf
      t.string :classOf

      t.timestamps null: false
    end
  end
end
