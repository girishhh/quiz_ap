class Person < ActiveRecord::Base	
	has_many :likes,autosave: true
	has_one :account,autosave: true
	has_one :account_history,through: :account
	validates_associated :account
	# validates_with TestValidator
	# validates :name,presence: true,strict: TestValidatorException
	# validates :name,presence: true,strict: TokenGenerationException	
	# validates :name,acceptance: { accept: "giri",message: 'must be abided' }
	# validates :name,numericality: {only_integer: true}
	# before_save :test,if: Proc.new{false},if: :test2

	# def test
	# 	p "test"
	# end

	# def test2
	# 	true
	# end

	# after_validation do 
	# 	p "after_validation"
	# end

	# before_validation do
	# 	p "before_validation"
	# end

	# after_update do 
	# 	p "after_update"
	# end

	# before_save do
	# 	p "before save"
	# 	raise ActiveRecord::RecordInvalid rescue nil
	# end
	

	# after_rollback do
	# 	p "after_rollback"
	# end

	# after_commit do
	# 	p "after_commit"
	# end	
	def test	
		p "#{cache_key}/#{self.sys_id}"
		Rails.cache.fetch("#{cache_key}/#{self.sys_id}",expires_in: 100000000000.seconds) do
			Person.all
		end
	end

end