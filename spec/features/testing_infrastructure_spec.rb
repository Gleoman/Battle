require 'pry'

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
    expect(page).to have_content("#{$game.player2.name} Hit Points = 100")
  end

  scenario 'See player1 Hit Points' do
    sign_in_and_play
    expect(page).to have_content("#{$game.player1.name} Hit Points = 100")
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
    expect(page).to have_content("Ed takes damage of 10! #{$game.player2.hit_points}")
  end

  scenario 'Player 2 receives confirmation of attack on Player 1' do
    sign_in_and_play
    click_button("P2_attack_P1")
    expect(page).to have_content("Attack Teddy")
  end

  scenario 'Player 2 reduces Player 1 Hit Points by attacking by 10' do
    sign_in_and_play
    click_button("P2_attack_P1")
    expect(page).to have_content("Teddy takes damage of 10! #{$game.player1.hit_points}")
  end

end
