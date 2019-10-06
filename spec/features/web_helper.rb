def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Link'
  fill_in :player2, with: 'Kirby'
  click_button('FIGHT')
end

def attack_return
  click_button 'attack'
  click_button 'play'
end

def heal_return
 click_button 'Heal'
 click_button 'play'
end
