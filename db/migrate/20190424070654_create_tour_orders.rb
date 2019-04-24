class CreateTourOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_orders do |t|
      t.string :customer
      t.string :cellphone
      t.string :email
      t.datetime :custdatetour
      t.references :tour, foreign_key: true

      t.timestamps
    end
  end
end
