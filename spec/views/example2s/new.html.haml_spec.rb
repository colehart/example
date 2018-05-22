require 'rails_helper'

RSpec.describe "example2s/new", type: :view do
  before(:each) do
    assign(:example2, Example2.new(
      :name => "MyString"
    ))
  end

  it "renders new example2 form" do
    render

    assert_select "form[action=?][method=?]", example2s_path, "post" do

      assert_select "input[name=?]", "example2[name]"
    end
  end
end
