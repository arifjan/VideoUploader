require 'spec_helper'

describe "postings/index" do
  before(:each) do
    assign(:postings, [
      stub_model(Posting,
        :title => "Title",
        :upload => nil
      ),
      stub_model(Posting,
        :title => "Title",
        :upload => nil
      )
    ])
  end

  it "renders a list of postings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
