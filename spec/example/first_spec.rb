require "rails_helper"

#this spec tests if the operation 6*7 returns the result of 42
RSpec.describe "The math below is right" do
    it "should equal 42" do
        expect(6*7).to eq(42)
    end
end


#this spec creates a new empty string with spec and it checks if it is empty
RSpec.describe "hello spec" do
    #...
    describe String do
        let(:string) {String.new}
        it "should provide an empty string" do
            expect(string).to eq("")
        end
    end
end