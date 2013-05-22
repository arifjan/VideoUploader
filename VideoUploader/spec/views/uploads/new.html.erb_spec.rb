require 'spec_helper'

describe "uploads/new" do
  before(:each) do
    assign(:upload, stub_model(Upload,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", uploads_path, "post" do
      assert_select "input#upload_name[name=?]", "upload[name]"
      assert_select "input#upload_description[name=?]", "upload[description]"
    end
  end
end
