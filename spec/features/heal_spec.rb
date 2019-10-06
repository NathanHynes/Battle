# frozen_string_literal: true

feature 'heal' do
  scenario 'It increses players health by 10' do
    sign_in_and_play
    click_button 'Heal'
    expect(page).to have_content 'Link healed, HP is now 110HP'
  end

  scenario 'Warns player it was their last heal' do
    sign_in_and_play
    heal_return
    heal_return
    click_button 'Heal'
    expect(page).to have_content 'Link - That was your last health potion'
  end
  scenario 'button disappears after 2 uses' do
    sign_in_and_play
    heal_return
    heal_return
    heal_return
    heal_return
    expect(page).not_to have_button 'Heal'
  end
end
