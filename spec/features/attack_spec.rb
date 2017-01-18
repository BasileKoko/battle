
feature 'Win the game' do
  scenario 'attack player 2', js: true do #I add this js: true to fix confirmation message
    sign_in_and_play
    click_button('Attack')
    page.accept_alert
    end
end
