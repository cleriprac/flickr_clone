require 'rails_helper'

describe "the delete photo process" do
  it "deletes a new photo" do
    user = FactoryGirl.create(:user)
    photo = FactoryGirl.create(:photo, user: user) #associate photo with user
    visit '/users/login'
    login_as(user, :scope => :user)
    visit user_path(user)
    # save_and_open_page #using launchy
    expect(page).to have_selector('#photo_test')
    find('#photo_test').click
    click_on "Delete Photo"
    expect(page).to have_no_selector('#photo_test')
  end
end
