class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show 
  
 def say_that_thing_you_say
   "#{self.name} always says: #{self.catchphrase}"
 end 
 
 #def build_show(name)
   #show = Actor.find_or_create_by(:name)
   #show.name
 #end
end