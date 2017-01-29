class User < ApplicationRecord
	has_secure_password
	has_many :drive_files
	validates :username, presence: true, uniqueness: true
end
