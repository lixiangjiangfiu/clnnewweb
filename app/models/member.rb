class Member < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone_no, :speciality, :title
end
