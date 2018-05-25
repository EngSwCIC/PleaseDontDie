require 'rails_helper'

RSpec.describe "species/new", type: :view do
  before(:each) do
    assign(:specie, Specie.new())
  end

  it "renders new specie form" do
    render

    assert_select "form[action=?][method=?]", species_path, "post" do
    end
  end
end
