class Battery < ActiveRecord::Base
	belongs_to :mobile,foreign_key: 'mobile_id'
	validates :name,numericality: {only_integer: true,greater_than: 20}
end