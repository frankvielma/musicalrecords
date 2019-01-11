require 'rails_helper'

RSpec.describe "l_ps/new", type: :view do
  before(:each) do
    Artist.create!(name: 'test')
    @artists = Artist.all
    assign(:lp, Lp.new(
      :name => "MyString",
      :description => "MyText",
      :artist_id => Artist.first.id
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
