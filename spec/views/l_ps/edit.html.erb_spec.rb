require 'rails_helper'

RSpec.describe "lps/edit", type: :view do
  before(:each) do
    @lp = assign(:lp, Lp.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit lp form" do
    render

    assert_select "form[action=?][method=?]", lp_path(@lp), "post" do

      assert_select "input#lp_name[name=?]", "lp[name]"

      assert_select "textarea#lp_description[name=?]", "lp[description]"
    end
  end
end
