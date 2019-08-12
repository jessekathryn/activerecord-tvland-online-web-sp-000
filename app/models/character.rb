class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show 
  
 def say_that_thing_you_say
   "#{self.name} always says: #{self.catchphrase}"
 end 
 
 def chain
   build_show = Actor.find_or_create_by(name: 'Firefly')
   build_network = Shows.find_of_create_by(:call_letters)
   
 end
end