class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :slug, unique: true
      t.string :title
      t.text :body
      t.string :tags, array: true, default: []
      t.datetime :published_at

      t.timestamps
    end
  end
end
