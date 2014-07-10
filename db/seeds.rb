# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_list = [
	["com" , "sher","com/compresorSH.jpg"],
	["com" , "her" ,"com/compresorH.jpg"],
	["com", "scr","com/compresorSCroll.jpg"],
	["com", "fra" ,"com/compresorFrac.png"],
	["eva", "eva" ,"evap/evap1.png"]
]

type_list.each do |model, sub_model , image|
  Category.create( model:model, sub_model:sub_model, description:"una descripcion" ,image:image)
end


product_list = [
	["Prod 1" , 100,"", 1 , "Buen Prod"],
	["Prod 2" , 100 ,"" ,1 , "Buen Prod"],
	["Prod 3", 100 ,"", 1 , "Buen Prod"],
	["Prod 4", 100 ,"" ,2 , "Buen Prod"],
	["Prod 5", 100 , "" , 2 , "Buen Prod"]
]

product_list.each do |name, price , image , category_id , description|
  Product.create( name:name, price:price ,image:image , category_id:category_id , description:description)
end

