require 'rails_helper'

feature 'visits homepage' do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css 'h1'
    expect(page).to have_content('Guestbook Entries')
  end
end