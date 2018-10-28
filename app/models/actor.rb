class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    role_print = []
    self.characters.each {|character| role_print << "#{character.name} - #{character.show.name}"}
    role_print
  end

end
