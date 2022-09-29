class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :motorcycle, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :total_price
      t.string :start_date
      t.string :end_date
      t.string :city

      t.timestamps
    end
  end
end
