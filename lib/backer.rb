class Backer

    attr_reader :name, :backed_projects

    def initialize (name)
        @name = name
        @backed_projects = [ ]
    end

    def back_project(project)
        ProjectBacker.new(project, self)
        @backed_projects << project
    end

    def backed_projects
        @backed_projects
    end
end