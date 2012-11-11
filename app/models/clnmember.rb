class Clnmember < ActiveRecord::Base
  attr_accessible :company_name, :email, :first_name, :last_name, :occupation, :phone_no
end
