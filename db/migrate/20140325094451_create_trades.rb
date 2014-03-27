class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :date
      t.integer :quantity
      t.string :stock

      t.timestamps
    end
  end
end
