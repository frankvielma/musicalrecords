require 'rails_helper'

RSpec.describe "lps/new", type: :view do
  before(:each) do
    assign(:lp, Lp.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new lp form" do
    render

    assert_select "form[action=?][method=?]", lps_path, "post" do

      assert_select "input#lp_name[name=?]", "lp[name]"

      assert_select "textarea#lp_description[name=?]", "lp[description]"
    end
  end
end
