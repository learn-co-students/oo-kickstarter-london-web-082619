require 'pry'

class Project 
    attr_reader :title :baker 

    def initialize(title)
        @title = title 
        @baker = []
    end 

    def add_backer(backer)
        self.backers << backer
        backer.backed_project << self 
    end 

end 
