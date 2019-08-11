class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def 
  def actors_list
    self.actors.full_name
  end
end