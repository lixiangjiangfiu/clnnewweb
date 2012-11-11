class Customer < ActiveRecord::Base
  attr_accessible :comment, :company, :email, :name, :phone_no
end
