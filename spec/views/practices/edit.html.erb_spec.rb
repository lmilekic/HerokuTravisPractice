require 'rails_helper'

RSpec.describe "practices/edit", :type => :view do
  before(:each) do
    @practice = assign(:practice, Practice.create!(
      :game => "MyString",
      :score => 1
    ))
  end

  it "renders the edit practice form" do
    render

    assert_select "form[action=?][method=?]", practice_path(@practice), "post" do

      assert_select "input#practice_game[name=?]", "practice[game]"

      assert_select "input#practice_score[name=?]", "practice[score]"
    end
  end
end
