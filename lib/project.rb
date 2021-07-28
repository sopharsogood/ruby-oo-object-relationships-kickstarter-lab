class Project
    attr_accessor :title

    def initialize(title)
        self.title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        backers = []
        ProjectBacker.all.each do |project_backer|
            backers << project_backer.backer if project_backer.project == self
        end
        backers
    end

end