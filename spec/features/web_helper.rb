def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Link'
  fill_in :player2, with: 'Kirby'
  click_button('FIGHT')
end
