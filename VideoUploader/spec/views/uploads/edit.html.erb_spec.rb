require 'spec_helper'

describe "uploads/edit" do
  before(:each) do
    @upload = assign(:upload, stub_model(Upload,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", upload_path(@upload), "post" do
      assert_select "input#upload_name[name=?]", "upload[name]"
      assert_select "input#upload_description[name=?]", "upload[description]"
    end
  end
end
