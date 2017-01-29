class CreateDriveFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :drive_files do |t|

    t.string :name
    t.string :type
    t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
