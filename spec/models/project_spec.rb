require "rails_helper"

#this spec validates that the project is created properly with a title and description and that it is properly created
RSpec.describe Project, type: :model do

    #this context is to validate:
    context "validations tests" do
        #create new project with no title and ensure it gives error
        it "ensure the title is present" do
            project = Project.new(description: "Content of the description")
            expect(project.valid?).to eq(false)
        end

        #create new project with no description and ensure it gives error
        it "ensure the description is present" do
            project = Project.new(title: "Name of project")
            expect(project.valid?).to eq(false)
        end

        #create new project with correct data and ensure it is properly saved
        it "should be able to save project" do
            project = Project.new(title: "Title", description: "Some description content goes here")
            expect(project.save).to eq(true)
        end
    end
    
    #this context validates that if 3 projects are created they all appear properly
    context "scopes tests" do

        #this creates a variable for the paramaters then makes 3 projects
        let(:params) { {title: "Title", description: "some description"} }
        before(:each) do
            Project.create(params)
            Project.create(params)
            Project.create(params)
        end

        #this counts the number of projects and ensures it adds to 3
        it "should return all projects" do
            expect(Project.count).to eq(3)
        end

    end
end