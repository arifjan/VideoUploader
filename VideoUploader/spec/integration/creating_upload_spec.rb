require 'spec_helper'

feature 'Creating Uploads' do

  before do
    visit '/'
    click_link "New Upload"
  end

  scenario "Can create an upload" do
    fill_in 'Name', :with => "Test Upload 1"
    fill_in 'Description', :with => "My special test upload"
    click_button "Create Upload"
    page.should have_content("Upload was successfully created.")

  end

  scenario "Cannot create upload without a name" do
    click_button 'Create Upload'
    page.should have_content("2 errors prohibited this upload from being saved:")
    page.should have_content("Name is required field and can't be blank!")
    page.should have_content("Description is required field and can't be blank!")
  end
end