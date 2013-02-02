class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :name
      t.text :content

      t.timestamps
    end
    add_index :comments, :name_id
  end
end
