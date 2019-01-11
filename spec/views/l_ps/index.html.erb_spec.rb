require 'rails_helper'

RSpec.describe "l_ps/index", type: :view do
  before(:each) do
    Artist.create!(name: 'test')
    @artists = Artist.all
    assign(:lps, [
      Lp.create!(
        :name => "Name",
        :description => "MyText",
        :artist_id => Artist.first.id
      ),
      Lp.create!(
        :name => "Name",
        :description => "MyText",
        :artist_id => Artist.first.id
      )
    ])
  end

  it "renders a list of lps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
