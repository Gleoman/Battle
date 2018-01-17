

feature 'Entering player names' do
  scenario 'Players enter name at the start of the game' do
    visit('/')
    fill_in "player1_name", with: "Teddy"
    fill_in "player2_name", with: "Ed"
    click_button("Submit")
    expect(page).to have_content("Teddy", "Ed")
  end
end
