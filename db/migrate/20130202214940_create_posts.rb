class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :name
      t.string :title
      t.text :content
      t.boolean :isVisible

      t.timestamps
    end
    add_index :posts, :name_id
  end
end
