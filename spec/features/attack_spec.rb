feature 'attack player' do
  scenario 'attack confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'Link attacked Kirby'
  end

  scenario 'When attacked HP reduces' do
    allow_any_instance_of(Player).to receive(:rand) { 10 }
    sign_in_and_play
    click_button('attack')
    click_button('play')
    expect(page).not_to have_content 'Kirby: 100HP'
    expect(page).to have_content 'Kirby: 90HP'
  end

  scenario 'attack page displays defenders health' do
    allow_any_instance_of(Player).to receive(:rand) { 10 }
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "Kirby's remaining health is 90HP"
  end
end
