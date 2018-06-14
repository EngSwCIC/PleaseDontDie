require 'rails_helper'

RSpec.describe "duties/show", type: :view do
  before(:each) do
    @duty = assign(:duty, Duty.create!(
      :name => "Name",
      :description => "MyText",
      :importance => 2,
      :frequency => 3,
      :pet => nil,
      :need => nil,
      :done => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
