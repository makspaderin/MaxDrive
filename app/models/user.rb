class User < ActiveRecord::Base
	has_secure_password
	has_many :drive_files
	validates :username, presence: true, uniqueness: true
	validates :photo,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ }

	 has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "50x50#" }

end
