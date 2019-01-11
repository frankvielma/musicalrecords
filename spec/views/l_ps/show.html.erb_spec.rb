require 'rails_helper'

RSpec.describe "l_ps/show", type: :view do
  before(:each) do
    Artist.create!(name: 'test')
    @lp = assign(:lp, Lp.create!(
      :name => "Name",
      :description => "MyText",
      :artist_id => Artist.first.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
