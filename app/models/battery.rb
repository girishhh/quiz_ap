class Battery < ActiveRecord::Base
	require 'engine'
	belongs_to :mobile,foreign_key: 'mobile_id'
	validates :name,numericality: {only_integer: true,greater_than: 20}
	attr_accessor :gang	

	@@ins = 22

	arr = ["engine","wheel"]

	arr.each do |name|

		 define_method("set_#{name}=") do |info|
		 	p "11111111111111111111"
		 	instance_variable_set("@var_#{name}",info)
		 end

		 define_method("get_#{name}") do 
		 	instance_variable_get("@var_#{name}")
		 end

		 define_method("test") do |arg,arg2|
		 	p arg
		 	p arg2
		 end

	end

	def get_ins
		@@ins
	end

	
	a=Battery.new

	def test1
 		p "test1"
 	end

	 def a.test1
	 	p "test2"
	 end	 

	 a.test1	 




end