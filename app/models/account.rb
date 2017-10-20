class Account < ActiveRecord::Base
 belongs_to :person
 has_one :account_history	
 validates :account_name,presence: true
 hbjhbjhb 
end