
feature 'Homepage' do
  scenario 'Player is prompted to enter name' do
    visit('/')
    expect(page).to have_text("Players enter your names:")
  end

  scenario 'Player can type and submit thier name' do
    visit('/')
    fill_in :player1, with: 'Link'
    fill_in :player2, with: 'Kirby'
    click_button('Submit')
    expect(page).to have_content 'Link vs Kirby - FIGHT!'
  end

end
