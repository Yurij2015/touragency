class CreateShedules < ActiveRecord::Migration[5.2]
  def change
    create_table :shedules do |t|
      t.datetime :datetimetour
      t.integer :countplace
      t.decimal :tourcost
      t.references :tour, foreign_key: true

      t.timestamps
    end
  end
end
