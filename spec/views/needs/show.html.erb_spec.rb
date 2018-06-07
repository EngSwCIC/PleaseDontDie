require 'rails_helper'

RSpec.describe "needs/show", type: :view do
  before(:each) do
    @need = assign(:need, Need.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
