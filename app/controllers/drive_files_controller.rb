class DriveFilesController < ApplicationController
	before_action :require_user, only: [:index, :new, :create]

def index
  	#@drive_files = DriveFile.where('owner = ? OR user_id = ?', current_user.username, current_user.id)
    @drive_files = DriveFile.where('user_id = ?', current_user.id)
 end

 def new
  @drive_file = DriveFile.new
 end

 def create
  @drive_file = DriveFile.new(drive_file_params)
  @drive_file.user_id = current_user.id
  @drive_file.owner = current_user.username
  if @drive_file.save
  	redirect_to '/files'
  else
   render 'new'
  end
 end

 private
 def drive_file_params
  params.require(:drive_file).permit(:name, :type, :owner)
end	
end
