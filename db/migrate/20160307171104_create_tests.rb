class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :user_id
      t.string :test_name
      t.string :test_type
      
      t.timestamps
    end
  end
end
