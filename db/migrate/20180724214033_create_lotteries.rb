class CreateLotteries < ActiveRecord::Migration[5.2]
  def change
    create_table :lotteries do |t|
      t.string :name
      t.jsonb :schema

      t.timestamps
    end
  end
end
