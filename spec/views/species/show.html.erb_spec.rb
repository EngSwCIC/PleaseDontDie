require 'rails_helper'

RSpec.describe "species/show", type: :view do
  before(:each) do
    @specie = assign(:specie, Specie.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
