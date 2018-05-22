require 'rails_helper'

RSpec.describe "example1s/new", type: :view do
  before(:each) do
    assign(:example1, Example1.new(
      :name => "MyString",
      :description => "MyString",
      :age => 1
    ))
  end

  it "renders new example1 form" do
    render

    assert_select "form[action=?][method=?]", example1s_path, "post" do

      assert_select "input[name=?]", "example1[name]"

      assert_select "input[name=?]", "example1[description]"

      assert_select "input[name=?]", "example1[age]"
    end
  end
end
