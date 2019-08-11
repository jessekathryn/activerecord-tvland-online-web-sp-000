class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.collect |t|
     t.first_name
     t.last_name
    end
   end
  end
  
  def list_roles
    self.shows.characters
  end
end

 