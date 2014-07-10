class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :context
      t.integer :commentable_id
      t.string :commentable_string

      t.timestamps
    end
  end
end
