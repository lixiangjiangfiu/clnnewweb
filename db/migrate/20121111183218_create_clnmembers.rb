class CreateClnmembers < ActiveRecord::Migration
  def change
    create_table :clnmembers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone_no
      t.string :company_name
      t.string :occupation

      t.timestamps
    end
  end
end
