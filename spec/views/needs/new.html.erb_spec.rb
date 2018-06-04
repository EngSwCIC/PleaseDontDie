require 'rails_helper'

RSpec.describe "needs/new", type: :view do
  before(:each) do
    assign(:need, Need.new())
  end

  it "renders new need form" do
    render

    assert_select "form[action=?][method=?]", needs_path, "post" do
    end
  end
end
