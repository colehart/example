require 'rails_helper'

RSpec.describe "example2s/show", type: :view do
  before(:each) do
    @example2 = assign(:example2, Example2.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
