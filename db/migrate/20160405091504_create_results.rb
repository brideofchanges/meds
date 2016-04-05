class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :question_id
      t.integer :answer_id, array: true, default: []
      t.integer :attempt_id
      
      t.timestamps
    end
  end
end
