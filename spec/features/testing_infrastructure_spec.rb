# require  'pry'

feature 'Entering player names' do
  scenario 'Players enter name at the start of the game' do
    sign_in_and_play
    expect(page).to have_content("Teddy")
    expect(page).to have_content("Ed")
  end
end

feature 'Recording Hit Points' do
  scenario 'See player2 Hit Points' do
    sign_in_and_play
    expect(page).to have_content("Player 2 Hit Points = 100")
  end
end

feature 'Attacking Player' do
  scenario 'Player 1 receives confirmation of attack on Player 2' do
    sign_in_and_play
    click_button("P1_attack_P2")
    expect(page).to have_content("Attack Ed")
  end

  scenario 'Player 1 reduces Player 2 Hit Points by attacking by 10' do
    sign_in_and_play
    click_button("P1_attack_P2")
    #  binding.pry
     # $player2.hit_points
     game = Game.new()
     game.attack($player2)
    expect(page).to have_content("Ed takes damage of 10! #{$player2.hit_points}")
  end
end
