class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
     "#{self.first_name} #{self.first_name}"
    end
  end


  def list_roles
    "#{character.name} - #{shows.name}"
  end
end

 