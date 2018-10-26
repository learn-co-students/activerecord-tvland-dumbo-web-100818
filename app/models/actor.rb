class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    actor = Actor.all.first
    "#{actor.first_name} #{actor.last_name}"
  end

  def list_roles
    character.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end



end
