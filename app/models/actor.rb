class Actor < ActiveRecord::Base
	has_many :characters
	has_many :show, through: :characters

	def full_name
		"#{first_name} #{last_name}"
	end

	def list_roles
		self.characters.map {|character|
			"#{character.name} - #{show.find_by(id: character.show_id).name}"
		}
	end
end