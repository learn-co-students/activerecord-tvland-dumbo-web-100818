class Show < ActiveRecord::Base
	has_many :characters
	has_many :shows, through: :characters
	belongs_to :network

	def build_network(call_letters:)
		self.network = Network.new(call_letters: call_letters)
	end
end