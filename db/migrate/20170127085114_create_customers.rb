class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.string :contact_person
      t.string :email
      t.string :phone
      t.float :vat
      t.string :logo

      t.timestamps
    end
  end
end
