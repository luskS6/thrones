class AddAvatarToItems < ActiveRecord::Migration
  def change
  end

  def self.up
	add_attachement :items, :avatar
  end

  def self.down
	remove_attachement :items, :avatar
  end


end
