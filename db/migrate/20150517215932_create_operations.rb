class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :o_type, limit: 23, null: false
      t.string :pay_type, limit: 23, null: false
      t.date :date, null: false
      t.string :a_origin, limit: 23
      t.string :a_target, limit: 23
      t.decimal :amount, precision: 12, scale: 2 
      t.references :account, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true   

      t.timestamps null: false
    end
  end
end
