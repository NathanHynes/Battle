# frozen_string_literal: true

feature 'Enter names' do
  scenario 'Player can type and submit thier name' do
    sign_in_and_play
    expect(page).to have_content 'Link vs Kirby - FIGHT!'
  end
end
