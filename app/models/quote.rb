class Quote < ActiveRecord::Base
  attr_accessible :appraised_value, :customer_id, :document_type, :down_payment, :fico_score, :loan_amount, :loan_type, :occupancy_type, :program_type, :property_type, :purchase_price
end
