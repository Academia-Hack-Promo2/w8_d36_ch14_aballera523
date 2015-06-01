class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :a_type, limit: 15, null: false
      t.string :number, limit: 23, null: false      
      t.decimal :balance, precision: 12, scale: 2      
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
