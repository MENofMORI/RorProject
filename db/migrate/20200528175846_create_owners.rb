class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :sname
      t.string :pesel
      t.string :email
      t.string :telefon

      t.timestamps
    end
  end
end
