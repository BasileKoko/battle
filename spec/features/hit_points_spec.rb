feature 'Check winning status' do
  scenario 'checking player2 hit point' do
    sign_in_and_play
    expect(page).to have_content "Basile: 45HP"
  end
end
