feature 'attack player' do
  scenario 'attack confirmation' do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content "Link attacked Kirby"
  end
end
