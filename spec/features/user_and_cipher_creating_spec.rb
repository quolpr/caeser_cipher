require 'rails_helper'

feature "User and cipher creating", js: true do
  scenario "Creating user and then cipher" do
    visit '/'
    within('.new-user') do
      fill_in 'name', with: attributes_for(:user)[:name]
    end
    click_button '->'
    wait_for_ajax
    within('.edit-cipher') do
      fill_in 'message', with: 'abc'
      fill_in 'shift', with: '1'
    end
    wait_for_ajax
    expect(page).to have_content 'bcd'
  end
end
