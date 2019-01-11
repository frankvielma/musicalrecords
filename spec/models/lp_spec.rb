require 'rails_helper'

RSpec.describe Lp, type: :model do

  describe "associations" do
    it { should belong_to(:artist) }
  end
end
