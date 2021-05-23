class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.date   :date
      t.string :timezone
      t.string :name
      t.string :payment_type
      t.string :status
      t.string :currency 
      t.float  :gross 
      t.float  :fee 
      t.integer :net 
      t.string :from_email 
      t.string :to_email 
      t.string :transaction_id
      t.string :item_id 
      t.string :frequency  

      t.timestamps
    end
  end
end
