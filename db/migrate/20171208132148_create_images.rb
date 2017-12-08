class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :filename
      t.string :imageable_type
      t.integer :imageable_id

      t.timestamps
    end
    add_index :images, [:imageable_id, :imageable_type]
  end
end
