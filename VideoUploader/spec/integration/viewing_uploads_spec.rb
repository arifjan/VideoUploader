require 'spec_helper'

feature "Viewing uploads" do
  scenario "Listing all uploads" do
    upload = Factory.create(:upload, :name => "TextMate 2")
    visit '/'
    click_link 'TextMate 2'
    page.current_url.should == upload_url(upload)
  end
end