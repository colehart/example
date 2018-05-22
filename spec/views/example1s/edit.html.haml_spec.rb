require 'rails_helper'

RSpec.describe "example1s/edit", type: :view do
  before(:each) do
    @example1 = assign(:example1, Example1.create!(
      :name => "MyString",
      :description => "MyString",
      :age => 1
    ))
  end

  it "renders the edit example1 form" do
    render

    assert_select "form[action=?][method=?]", example1_path(@example1), "post" do

      assert_select "input[name=?]", "example1[name]"

      assert_select "input[name=?]", "example1[description]"

      assert_select "input[name=?]", "example1[age]"
    end
  end
end
