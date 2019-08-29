class Project

    attr_reader :title
    attr_accessor :backers

    def initialize(title) #Project.new(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end

end