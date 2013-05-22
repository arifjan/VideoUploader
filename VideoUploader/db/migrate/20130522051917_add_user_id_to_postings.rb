class AddUserIdToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :user_id, :integer
    add_index :postings, :user_id
  end
end
