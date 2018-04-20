class Section < ActiveRecord::Base
	belongs_to :document
	has_many :paragraphs
	# validates :name,presence: true
end
