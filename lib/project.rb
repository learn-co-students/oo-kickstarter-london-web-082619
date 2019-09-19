class Project
attr_reader :title, :backers
@@all = []

def initialize(title)
    @title = title
    @backers = []
    @@all << self
end

#Write a methyod on the Project class called add_backer
#that takes in a Backer instance and adds the backer to its 
#@backed_projects attributes
def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end
end