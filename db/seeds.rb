require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
      csv_text = File.open('geo_sampa.csv',"r:ISO-8859-1")
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
      #row = row.to_hash
      puts row
      #row.each do |r|
      #health = HealthEquipment.create!(r)
      #end

      
      #HealthEquipment.create!(:lat => row.values_at('lat').to_s, :longi => row.values_at('longi').to_s, :address => row.values_at('address').to_s, :typeOf => row.values_at('type').to_s, :classOf => row.values_at('classOf').to_s)
      #health = HealthEquipment.create do |c|
        #c.lat => row.values_at('lat').to_f
        #c.longi => row.values_at('longi').to_f
        #c.address => row.values_at('address').to_s
        #c.type => row.values_at('type').to_s
        #c.classOf => row.values_at('classOf').to_s
      
      HealthFacility.create!(row.to_hash)
      #puts "Import done"
  end

