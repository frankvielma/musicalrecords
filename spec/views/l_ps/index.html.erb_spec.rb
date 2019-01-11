require 'rails_helper'

RSpec.describe "lps/index", type: :view do
  before(:each) do
    assign(:lps, [
      Lp.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Lp.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of lps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
