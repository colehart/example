require 'rails_helper'

RSpec.describe "example2s/index", type: :view do
  before(:each) do
    assign(:example2s, [
      Example2.create!(
        :name => "Name"
      ),
      Example2.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of example2s" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
