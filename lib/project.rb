require_relative "./backer"
class Project 
@@all = []
attr_reader :title, :backers

def initialize(title) #why dont you add backers
    @title = title 
    @backers = []
    @@all << self
    
end 

def self.all 
    @@all 
end 

def add_backer(backer)
    @backers << backer 
    backer.backed_projects << self
end 


end 