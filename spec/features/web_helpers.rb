

def sign_in_and_play
  visit('/')
  fill_in "player1_name", with: "Teddy"
  fill_in "player2_name", with: "Ed"
  click_button("Submit")
end
