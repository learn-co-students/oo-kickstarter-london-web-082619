class Backer
    attr_reader :name, :backed_projects
   
    @@all = []

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
end

#Wriyte a method on the Backer class called back_project
#that takes in a Project instance and adds the project
#to its @backed_projectas attributes.
def back_project(project)
    backed_projects << project
    project.backers << self
  end
end
