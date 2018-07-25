class CreateContests < ActiveRecord::Migration[5.2]
  def change
    create_table :contests do |t|
      t.string :name
      t.integer :category
      t.integer :type
      t.integer :max_prize_count
      t.decimal :value
      t.date :deadline
      t.references :lottery, foreign_key: true

      t.timestamps
    end
  end
end
