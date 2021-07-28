class Backer
    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = []
        ProjectBacker.all.each do |project_backer|
            backed_projects << project_backer.project if project_backer.backer == self
        end
        backed_projects
    end

end