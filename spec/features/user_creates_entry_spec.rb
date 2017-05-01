require 'rails_helper'

feature 'User creates an entry' do
  scenario 'successfully with valid data' do
    visit root_path
    expect{
      fill_in 'Name', with: 'Esther'
      fill_in "Message", with: 'Holla Holla Holla'
      click_button 'Create Entry'
    }.to change(Entry, :count).by(1)
    entry = Entry.last
    expect(entry).to_not be_nil
    expect(current_path).to eq(root_path)
    expect(page).to have_content('successfully created')
    expect(page).to have_css '.listings li', text: "Esther"
  end

  scenario 'unsuccessfully with invalid data' do
    visit root_path
    expect{
      fill_in 'Name', with: 'Esther'
      fill_in "Message", with: nil
      click_button 'Create Entry'
    }.to change(Entry, :count).by(0)
    expect(current_path).to eq(entries_path)    
    expect(page).to have_content("can't be blank")
  end

end