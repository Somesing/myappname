class CreateTestspecs < ActiveRecord::Migration
  def change
    create_table :testspecs do |t|

      t.timestamps
    end
  end
end
