feature 'Hit points are displayed' do
  scenario "see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Kirby: 100HP")
  end

  scenario "see player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content("Link: 100HP")
  end
end
