class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :summary
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
