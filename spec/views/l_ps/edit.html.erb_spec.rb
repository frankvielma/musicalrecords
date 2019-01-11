require 'rails_helper'

RSpec.describe "l_ps/edit", type: :view do
  before(:each) do
    Artist.create!(name: 'test')
    @artists = Artist.all
    @lp = assign(:lp, Lp.create!(
      :name => "MyString",
      :description => "MyText",
      :artist_id => Artist.first.id
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
