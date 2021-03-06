require 'spec_helper'


describe "Authenticated User" do

  before do
    @user = create(:user)
    login(@user)
  end

  it "can reach new campaign page" do
    visit new_campaign_path
    expect(page).to have_content("Title")
  end

  it "can log out" do
    visit root_path
    click_link 'LOGOUT'
    expect(page).to have_content("LOGIN")
  end

end
