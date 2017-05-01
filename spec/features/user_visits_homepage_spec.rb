require 'rails_helper'

feature 'visits homepage' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_css 'h1'
    expect(page).to have_content('All Entries')
  end

  scenario 'should have list of entries' do
    peter = create(:entry, name: "Peter", message: "Holla")
    visit root_path

    expect(page).to have_css('.listings li')
    expect(page).to have_content('Peter Holla')
    expect(page).to have_content('Delete')
  end
end
