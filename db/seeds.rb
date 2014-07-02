# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_list = [
	["com" , "her"],
	["com", "scr"],
	["com", "fra"]
]

type_list.each do |model, sub_model|
  Category.create( model:model, sub_model:sub_model)
end


