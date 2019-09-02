require 'pry'

class Baker 

    attr_accessor :backed_project
    attr_reader :name :reader

    def initialize(name, backed_project)
        @name = name 
        @backed_project = []
    end 

    def backed_project(project)
        @backed_project << project
        project.add_backer(self)
    end
    
end

binding.pry