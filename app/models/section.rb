class Section < ActiveRecord::Base
	belongs_to :document
	has_many :paragraphs
end
