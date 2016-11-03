class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :comp
      t.integer :user

      t.timestamps null: false
    end
  end
end
