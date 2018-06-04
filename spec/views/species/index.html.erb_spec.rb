require 'rails_helper'

RSpec.describe "species/index", type: :view do
  before(:each) do
    assign(:species, [
      Specie.create!(),
      Specie.create!()
    ])
  end

  it "renders a list of species" do
    render
  end
end
