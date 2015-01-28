require 'rails_helper'

RSpec.describe "practices/index", :type => :view do
  before(:each) do
    assign(:practices, [
      Practice.create!(
        :game => "Game",
        :score => 1
      ),
      Practice.create!(
        :game => "Game",
        :score => 1
      )
    ])
  end

  it "renders a list of practices" do
    render
    assert_select "tr>td", :text => "Game".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
