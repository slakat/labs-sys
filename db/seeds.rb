# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_list = [
	["com" , "sher","https://dl-web.dropbox.com/get/FotosSyS/compresorSH.jpg?_subject_uid=249217926&w=AAD3vrG6MvObZ8a_oXh9FFBlir7nVPZmhaybLDlg93XInA"]
	#["com" , "her" ,"compresorH.jpg"],
	#["com", "scr","compresorSCroll.jpg"],
	#["com", "fra" ,"compresorFrac.png"]
]

type_list.each do |model, sub_model , image|
  Category.create( model:model, sub_model:sub_model, remote_image_url:image)
end


