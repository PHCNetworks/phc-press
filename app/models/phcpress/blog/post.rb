module Phcpress
	class Blog::Post < ActiveRecord::Base

		# Declare Attachment
		has_attached_file :pstimage, 
		
		# Set Image Sizes
		styles: { 
			largesquare: "520x500>",
			largerectangle:	"1040x500>",
			mediumsquare: "360x340>",
			mediumrectangle: "720x340>",
			thumb: "150x150>" },
		
		# Set Image Local Path
		:path => ":rails_root/public/images/:id/:style/:filename",

		# Set Image URL Path
		:url => "/images/:id/:style/:filename",

		# Todo: Change
		default_url: "/images/:style/missing.png"

		# Validate Images Only
		validates_attachment_content_type :pstimage, content_type: /\Aimage\/.*\Z/

	end
end
