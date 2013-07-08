class AddAttachmentImageToPedals < ActiveRecord::Migration
  def self.up
    change_table :pedals do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :pedals, :image
  end
end
