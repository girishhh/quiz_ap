class Employee < ActiveRecord::Base
	has_many :subordinates ,foreign_key: "manager_id",class_name: "Employee"
	belongs_to :manager,class_name: "Employee"
end