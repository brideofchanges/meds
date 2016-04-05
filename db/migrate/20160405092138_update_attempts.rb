class UpdateAttempts < ActiveRecord::Migration
  def change
    change_table :attempts do |t|
      t.integer :user_id
      t.integer :test_id
      
      t.timestamps
    end
  end
end
