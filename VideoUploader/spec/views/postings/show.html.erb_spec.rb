require 'spec_helper'

describe "postings/show" do
  before(:each) do
    @posting = assign(:posting, stub_model(Posting,
      :title => "Title",
      :upload => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(//)
  end
end
