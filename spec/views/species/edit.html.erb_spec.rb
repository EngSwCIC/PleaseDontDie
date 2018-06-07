require 'rails_helper'

RSpec.describe "species/edit", type: :view do
  before(:each) do
    @specie = assign(:specie, Specie.create!())
  end

  it "renders the edit specie form" do
    render

    assert_select "form[action=?][method=?]", specie_path(@specie), "post" do
    end
  end
end
