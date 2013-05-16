class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.references :upload

      t.timestamps
    end
    add_index :postings, :upload_id
  end
end
