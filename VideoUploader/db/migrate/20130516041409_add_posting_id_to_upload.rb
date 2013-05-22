class AddPostingIdToUpload < ActiveRecord::Migration
  def change
    add_column :uploads, :posting_id, :integer
  end
end
