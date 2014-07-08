class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :post
      t.integer :user_id
      t.string :summary

      t.timestamps
    end
  end
end
