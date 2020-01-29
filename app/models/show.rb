class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.characters.map {|c| "#{c.actor.full_name}"}
  end 
  
end