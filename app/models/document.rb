class Document < ActiveRecord::Base
	has_many :sections
	has_many :paragraphs,through: :sections
end
