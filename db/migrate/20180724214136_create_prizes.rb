class CreatePrizes < ActiveRecord::Migration[5.2]
  def change
    create_table :prizes do |t|
      t.string :name
      t.integer :type
      t.decimal :value
      t.string :supplier
      t.references :contest, foreign_key: true
      t.jsonb :meta_data

      t.timestamps
    end
  end
end
