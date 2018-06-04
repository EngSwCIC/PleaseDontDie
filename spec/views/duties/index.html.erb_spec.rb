require 'rails_helper'

RSpec.describe "duties/index", type: :view do
  before(:each) do
    assign(:duties, [
      Duty.create!(
        :name => "Name",
        :description => "MyText",
        :importance => 2,
        :frequency => 3,
        :pet => nil,
        :need => nil,
        :done => false
      ),
      Duty.create!(
        :name => "Name",
        :description => "MyText",
        :importance => 2,
        :frequency => 3,
        :pet => nil,
        :need => nil,
        :done => false
      )
    ])
  end

  it "renders a list of duties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
