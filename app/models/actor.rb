class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.characters.collect do |t|
     Actors << t.first_name 
     Actors << t.last_name
    end
  end


  def list_roles
    self.shows
  end
end

 