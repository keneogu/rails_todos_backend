class Todo < ApplicationRecord
	before_save :def_capitalize
	validates :title, presence: true
	belongs_to :user

	def def_capitalize
		self.title = title.capitalize
	end
end
