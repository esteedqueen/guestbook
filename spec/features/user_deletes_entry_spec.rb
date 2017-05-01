require 'rails_helper'

feature 'User deletes an entry' do
  scenario 'successfully' do
    visit root_path
    expect{
      click_button('Delete', match: :first)
    }.to change(Entry, :count).by(-1)
    expect(current_path).to eq(root_path)
    expect(page).to have_content('Entry deleted')
  end
end