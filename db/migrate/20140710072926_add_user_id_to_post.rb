class AddUserIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :userid, :integer
  end
end
