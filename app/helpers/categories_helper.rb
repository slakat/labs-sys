module CategoriesHelper

	def get_url(img,cat,title)
		@type= Category.where(:model=>cat)
		if @type.size==1
			link_to image_tag(img),category_url(@type.first.id)
		else
			link_to image_tag(img), :controller => "categories", :action => "index_category", :cat => cat, :title=>title , remote:true
		end
	end

end
