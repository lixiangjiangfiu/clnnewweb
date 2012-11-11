class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :how_did
      t.string :issue_type
      t.string :email
      t.string :phone_no
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
