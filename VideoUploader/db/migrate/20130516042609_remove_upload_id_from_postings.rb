class RemoveUploadIdFromPostings < ActiveRecord::Migration
  def up
    remove_column :postings, :upload_id
  end

  def down
    add_column :postings, :upload_id, :integer
  end
end
