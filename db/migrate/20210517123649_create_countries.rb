class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :code
      t.string  :timezone 
      t.string  :to_email
      t.string  :email 

      t.timestamps
    end
  end
end
