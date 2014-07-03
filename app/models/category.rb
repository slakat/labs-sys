class Category < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
