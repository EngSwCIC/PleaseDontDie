require 'rails_helper'

RSpec.describe "needs/index", type: :view do
  before(:each) do
    assign(:needs, [
      Need.create!(),
      Need.create!()
    ])
  end

  it "renders a list of needs" do
    render
  end
end
