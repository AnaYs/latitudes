class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :abstract
      t.text :content

      t.timestamps null: false
    end
  end
end
