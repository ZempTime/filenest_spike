class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :file_id
      t.string :file_filename
      t.integer :file_size
      t.string :file_content_type
      t.integer :drop_id

      t.timestamps null: false
    end
  end
end
