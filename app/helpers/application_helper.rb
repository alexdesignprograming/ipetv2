module ApplicationHelper
	def profile_picture account, width = 120, height = 120
		
		thumb = account.image.present? ? account.image.thumb.url : "banner.jpg"
		image_tag thumb, width: width, height: height, class: "profile-pic img-circle"

	end

end
