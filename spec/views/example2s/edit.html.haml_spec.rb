require 'rails_helper'

RSpec.describe "example2s/edit", type: :view do
  before(:each) do
    @example2 = assign(:example2, Example2.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit example2 form" do
    render

    assert_select "form[action=?][method=?]", example2_path(@example2), "post" do

      assert_select "input[name=?]", "example2[name]"
    end
  end
end
