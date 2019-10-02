feature 'attack player' do
  scenario 'attack confirmation' do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content "Link attacked Kirby"
  end

  scenario 'When attacked HP reduces by 10' do
    sign_in_and_play
    click_button("attack")
    click_button("play")
    expect(page).not_to have_content "Kirby: 60HP"
    expect(page).to have_content "Kirby: 50HP"
  end
end
