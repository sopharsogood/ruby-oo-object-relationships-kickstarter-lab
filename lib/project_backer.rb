class ProjectBacker
    attr_accessor :project, :backer
    @@all = []

    def self.all
        @@all
    end

    def initialize(project, backer)
        self.project = project
        self.backer = backer
        @@all << self
    end

end