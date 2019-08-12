class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    shows.collect do |s|
    "#{s.characters.name} - #{s.shows.name}" 
  end
 end 
end

 