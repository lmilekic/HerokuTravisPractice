class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :game
      t.integer :score

      t.timestamps null: false
    end
  end
end
