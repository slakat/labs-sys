module CategoriesHelper

	def get_url_img(img,cat,title)
		@type= Category.where(:model=>cat)
		if @type.size==1
			link_to image_tag(img),category_url(@type.first.id)
		else
			link_to image_tag(img), :controller => "categories", :action => "index_category", :cat => cat, :title=>title , remote:true
		end
	end

	def get_url(text,cat,title)
		@type= Category.where(:model=>cat)
		if @type.size==1
			link_to text,category_url(@type.first.id)
		else
			link_to text, :controller => "categories", :action => "index_category", :cat => cat, :title=>title , remote:true
		end
	end

end
