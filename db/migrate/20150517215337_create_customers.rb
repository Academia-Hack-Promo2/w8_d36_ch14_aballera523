class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, limit: 15, null: false 
      t.string :last_name, limit: 15
      t.string :id_number, limit: 15, null: false
      t.string :address, limit: 100
      t.string :phone, limit: 15
      t.string :mail, limit: 30     

      t.timestamps null: false
    end
  end
end
