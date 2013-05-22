require 'spec_helper'

describe "postings/edit" do
  before(:each) do
    @posting = assign(:posting, stub_model(Posting,
      :title => "MyString",
      :upload => nil
    ))
  end

  it "renders the edit posting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posting_path(@posting), "post" do
      assert_select "input#posting_title[name=?]", "posting[title]"
      assert_select "input#posting_upload[name=?]", "posting[upload]"
    end
  end
end
