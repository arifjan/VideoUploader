require 'spec_helper'

feature "Deleting uploads" do
  #before do
  #  sign_in_as!(Factory(:admin_user))
  #end
  scenario "Deleting an upload" do
    Factory(:upload, :name => "TextMate 2")
    visit "/"
    click_link "TextMate 2"
    click_link "Delete Upload"
    visit "/"
    page.should_not have_content("TextMate 2")
  end


end