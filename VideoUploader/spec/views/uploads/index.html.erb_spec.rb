require 'spec_helper'

describe "uploads/index" do
  before(:each) do
    assign(:uploads, [
      stub_model(Upload,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Upload,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of uploads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
