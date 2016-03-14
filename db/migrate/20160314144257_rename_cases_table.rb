class RenameCasesTable < ActiveRecord::Migration
  def self.up
    rename_table :cases, :questions
  end

  def self.down
    rename_table :questions, :cases
  end
end