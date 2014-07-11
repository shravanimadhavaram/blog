class RenameCommentableStringComment < ActiveRecord::Migration
  def change
  	rename_column :comments, :commentable_string , :commentable_type
  end
end
