feature 'win a game' do
  scenario 'attack and reduce player 2 hit points' do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Chris: 35HP"
  end
end
