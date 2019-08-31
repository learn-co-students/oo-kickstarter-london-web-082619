class Project
    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        # add backer instance to backers attripute 
        self.backers << backer
        # backer.back_projects(self)
        backer.backed_projects << self
    end

end