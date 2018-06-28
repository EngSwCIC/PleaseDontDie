require 'rails_helper'

RSpec.describe "duties/edit", type: :view do
  before(:each) do
    @duty = assign(:duty, Duty.create!(
      :name => "MyString",
      :description => "MyText",
      :importance => 1,
      :frequency => 1,
      :pet => nil,
      :need => nil,
      :done => false
    ))
  end

  it "renders the edit duty form" do
    render

    assert_select "form[action=?][method=?]", duty_path(@duty), "post" do

      assert_select "input[name=?]", "duty[name]"

      assert_select "textarea[name=?]", "duty[description]"

      assert_select "input[name=?]", "duty[importance]"

      assert_select "input[name=?]", "duty[frequency]"

      assert_select "input[name=?]", "duty[pet_id]"

      assert_select "input[name=?]", "duty[need_id]"

      assert_select "input[name=?]", "duty[done]"
    end
  end
end
