require 'spec_helper'

feature 'Uploading File'
  
  before do
    visit '/'
    click_link 'New Upload'
  end

  scenario "can create upload"
    fill_in "Title", with: 'Miros first
  end
end