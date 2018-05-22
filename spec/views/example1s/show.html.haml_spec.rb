require 'rails_helper'

RSpec.describe "example1s/show", type: :view do
  before(:each) do
    @example1 = assign(:example1, Example1.create!(
      :name => "Name",
      :description => "Description",
      :age => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
  end
end
