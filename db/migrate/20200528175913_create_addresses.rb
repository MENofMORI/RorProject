class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :post_code
      t.string :province
      t.string :streat
      t.integer :home_number

      t.timestamps
    end
  end
end
