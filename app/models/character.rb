class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show 
  
 def say_that_thing_you_say
   "#{self.name} always says: #{self.catchphrase}"
 end 
 
 def build_show
   actor = Actor.find_or_create_by(name: 'Firefly')
 end
end