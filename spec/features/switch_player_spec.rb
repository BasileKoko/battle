feature 'Switch' do
  scenario 'Player will switch' do
    sign_in_and_play
    click_link('Attack')
    click_link('Switch')
    expect(page).to have_content ("Chris vs Basile")
  end
end
