require 'rails_helper'

RSpec.describe "lps/show", type: :view do
  before(:each) do
    @lp = assign(:lp, Lp.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
