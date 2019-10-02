feature "switches turns" do
  scenario "shows it's player 1 turn" do
    sign_in_and_play
    expect(page).to have_content "Link's turn to attack"
  end

  scenario "shows it's player 2 turn" do
    sign_in_and_play
    click_button 'attack'
    click_button 'play'
    expect(page).to have_content "Kirby's turn to attack"
  end
end
