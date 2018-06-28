require 'rails_helper'

RSpec.describe "needs/edit", type: :view do
  before(:each) do
    @need = assign(:need, Need.create!())
  end

  it "renders the edit need form" do
    render

    assert_select "form[action=?][method=?]", need_path(@need), "post" do
    end
  end
end
