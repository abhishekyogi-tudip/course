class AddAttachmentImageToStudents < ActiveRecord::Migration[5.0]
  def self.up
    change_table :students do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :students, :image
  end
end
