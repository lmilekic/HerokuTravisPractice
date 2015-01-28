require 'rails_helper'

RSpec.describe "practices/new", :type => :view do
  before(:each) do
    assign(:practice, Practice.new(
      :game => "MyString",
      :score => 1
    ))
  end

  it "renders new practice form" do
    render

    assert_select "form[action=?][method=?]", practices_path, "post" do

      assert_select "input#practice_game[name=?]", "practice[game]"

      assert_select "input#practice_score[name=?]", "practice[score]"
    end
  end
end
