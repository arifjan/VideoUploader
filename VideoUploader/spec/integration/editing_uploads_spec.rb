require 'spec_helper'

feature "Editing Uploads" do

  before do
    #sign_in_as!(Factory(:admin_user))
    Factory(:upload, :name =>"TextMate 2", :description => "This is a test upload")
    visit "/"
    click_link "TextMate 2"
    click_link "Edit"
  end

  scenario "Updating an upload" do
    fill_in "Name", :with => "TextMate 2 beta"
    click_button "Update Upload"
    page.should have_content("Upload was successfully updated.")
  end

  scenario "Updating an upload with invalid attributes is bad" do
    fill_in "Name", :with => ""
    click_button "Update Upload"
    page.should have_content("Name is required field and can't be blank")
  end

end