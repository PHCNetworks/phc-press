module Phcpress
	class News::Post < ActiveRecord::Base

		# For Image Uploads
		mount_uploader :pstimage, Phcpress::PstimageUploader
		
		# Associate Post Authour to User
		belongs_to :user

	end
end
