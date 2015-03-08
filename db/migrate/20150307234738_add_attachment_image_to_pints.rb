class AddAttachmentImageToPints < ActiveRecord::Migration
  def self.up
    change_table :pints do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pints, :image
  end
end
