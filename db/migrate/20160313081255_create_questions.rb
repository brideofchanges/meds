class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.text :q #Вопрос
      t.integer :test_id
      
      t.timestamps
      
    end
  end
end
