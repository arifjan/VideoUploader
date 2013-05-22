require 'spec_helper'

describe "postings/new" do
  before(:each) do
    assign(:posting, stub_model(Posting,
      :title => "MyString",
      :upload => nil
    ).as_new_record)
  end

  it "renders new posting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", postings_path, "post" do
      assert_select "input#posting_title[name=?]", "posting[title]"
      assert_select "input#posting_upload[name=?]", "posting[upload]"
    end
  end
end
