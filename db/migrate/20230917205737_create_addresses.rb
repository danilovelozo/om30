class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :zipcode
      t.string :street_name
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :ibge
      t.references :municipe, null: false, foreign_key: true
      t.timestamps
    end
  end
end
