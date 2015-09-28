class CreateDrops < ActiveRecord::Migration
  def change
    create_table :drops do |t|

      t.timestamps null: false
    end
  end
end
