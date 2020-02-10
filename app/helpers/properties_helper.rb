module PropertiesHelper

	def property_thumbnail property
		img = property.photo.present? ? property.photo.thumb.url : ""
		image_tag img, class: "property-thumb recipe-show"
	end

	def property_thumbnail_url property
		property.photo.present? ? property.photo.thumb.url : ""
	end
	
	def property_photo_url property
		property.photo.present? ? property.photo.url : asset_url("")
	end
	
end
