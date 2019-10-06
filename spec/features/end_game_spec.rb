# frozen_string_literal: true

feature 'End Game' do
  scenario 'It ends game when player has 0 hp' do
    allow_any_instance_of(Player).to receive(:rand) { 10 }
    sign_in_and_play
    18.times do
      attack_return
    end
    click_button 'attack'
    click_button 'Game Over'
    expect(page).to have_content 'Game Over'
  end

  scenario 'It shows the player who lost' do
    allow_any_instance_of(Player).to receive(:rand) { 10 }
    sign_in_and_play
    18.times do
      attack_return
    end
    click_button 'attack'
    click_button 'Game Over'
    expect(page).to have_content 'Kirby has been defeated'
  end
end
