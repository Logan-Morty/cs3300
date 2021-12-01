require "rails_helper"

#this ensures that operations on projects function properly
RSpec.describe ProjectsController, type: :controller do

    # Using FactoryBot, login a user so that CRUD actions can be performed
    login_user

    #this ensures an index can be returned properly
    context "GET #index" do
        it "returns a success response" do
            get :index
            # expect(resonse.success).to eq(true)
            expect(response).to be_successful
        end
    end

    #this creates a project and attempts to access it, and ensures it works correctly
    context "GET #show" do
        let!(:project) { Project.create(title: "Test title", description: "Test description") }
        it "returns a success response" do
            get :show, params: { id: project }
            expect(response).to be_successful
        end
    end
end