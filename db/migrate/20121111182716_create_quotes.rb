class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :loan_type
      t.float :purchase_price
      t.integer :fico_score
      t.float :down_payment
      t.string :property_type
      t.float :appraised_value
      t.string :occupancy_type
      t.float :loan_amount
      t.string :program_type
      t.string :document_type
      t.integer :customer_id

      t.timestamps
    end
  end
end
