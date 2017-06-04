require 'spec_helper'

feature 'Get Profile Results' do

  scenario 'visitng the home page' do
    visit '/'
    expect(page).to have_css("input")
  end

  scenario 'viewing JSON results' do
    user_name = 'alexfakhri'
    visit '/'
    fill_in :github_handle, with: user_name
    click_button 'Get Info'
    expect(current_path).to eq("/api/repos/#{user_name}")
    expect(page).to have_content('69041793')
    expect(page).to have_content('flickr-API')
    expect(page).to have_content('alexfakhri/flickr-API')
  end

  scenario 'returning error if user not found' do
    user_name = 'ausernamethatdoesntexists'
    visit '/'
    fill_in :github_handle, with: user_name
    click_button 'Get Info'
    expect(current_path).to eq("/api/repos/#{user_name}")
    expect(page).to have_content("Sorry, we couldn't find the user you requested")
  end

end
