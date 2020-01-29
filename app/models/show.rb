class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    actors = self.characters.actors
    actors.map {|a| "#{a.full_name}"}
  end 
  
end