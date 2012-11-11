class Inquiry < ActiveRecord::Base
  attr_accessible :email, :first_name, :how_did, :issue_type, :last_name, :phone_no
end
