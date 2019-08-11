class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name.last_name
  end
  
  def shows_and_characters
    self.shows.characters
  end
end

 