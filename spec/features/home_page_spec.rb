require 'rails_helper'

#this ensures that the homepage displays properly by visiting it and looking for text that should appear
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end
