class AddAttachmentAvatarToRooms < ActiveRecord::Migration
  def self.up
    change_table :rooms do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :rooms, :avatar
  end
end
