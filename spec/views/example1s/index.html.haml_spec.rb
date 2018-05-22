require 'rails_helper'

RSpec.describe "example1s/index", type: :view do
  before(:each) do
    assign(:example1s, [
      Example1.create!(
        :name => "Name",
        :description => "Description",
        :age => 2
      ),
      Example1.create!(
        :name => "Name",
        :description => "Description",
        :age => 2
      )
    ])
  end

  it "renders a list of example1s" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
