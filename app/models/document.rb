class Document < ActiveRecord::Base
	has_many :sections,after_add: :test_doc
	has_many :paragraphs,through: :sections
	accepts_nested_attributes_for :sections

	def test_doc(rr)
		p "8888888888"
	end
end
