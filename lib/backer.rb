require_relative "./project"
require "pry"
class Backer
@@all = [] 

attr_reader :name, :backed_projects

def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self 
end 

def self.all
    @@all 
end 

def back_project(new_project)
    @backed_projects << new_project 
  new_project.backers << self
end 


end 

