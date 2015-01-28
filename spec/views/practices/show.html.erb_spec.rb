require 'rails_helper'

RSpec.describe "practices/show", :type => :view do
  before(:each) do
    @practice = assign(:practice, Practice.create!(
      :game => "Game",
      :score => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Game/)
    expect(rendered).to match(/1/)
  end
end
