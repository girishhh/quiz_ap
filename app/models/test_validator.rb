class TestValidatorException < ActiveModel::Validator

	def validate
		rec.errors[:title] = "cannot be blank"
	end
end