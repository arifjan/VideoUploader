require 'spec_helper'
feature 'Signing in' do

  before do
    Factory(:user, :email => "videouploader@example.com")
  end

  scenario 'Signing in via confirmation' do
    open_email "videouploader@example.com", :with_subject => /Confirmation/
    click_first_link_in_email
    page.should have_content("Your account was successfully confirmed")
    page.should have_content("Signed in as videouploader@example.com")
  end

end
