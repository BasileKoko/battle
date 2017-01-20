feature 'Lose' do
  scenario 'One of the players will lose when HP is less than 0' do
    sign_in_and_play
    8.times do
    click_link('Attack')
    click_link('Switch')
	end
    click_link('Attack')
    expect(page).to have_content "Game over"
  end
end