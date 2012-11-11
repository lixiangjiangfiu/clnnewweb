class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.string :phone_no
      t.string :email
      t.string :comment

      t.timestamps
    end
  end
end
