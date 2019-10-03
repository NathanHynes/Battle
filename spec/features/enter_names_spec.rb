# frozen_string_literal: true

feature 'Enter names' do
  scenario 'Player can type and submit their name' do
    sign_in_and_play
    expect(page).to have_content 'Link vs Kirby - FIGHT!'
  end
end
