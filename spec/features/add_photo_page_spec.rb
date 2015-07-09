require 'rails_helper'

describe "the add photo process" do
  it "creates a new photo" do
    user = FactoryGirl.create(:user)
    photo = FactoryGirl.create(:photo, user: user)
    visit '/users/login'
    login_as(user, :scope => :user)
    visit '/'
    click_on 'Add Photo'
    fill_in 'Title', :with => 'cat'
    fill_in 'Description', :with => 'it\s a cat'
    click_on "Create Photo"
    expect(page).to have_content "Your photo has been added!"
  end
end
