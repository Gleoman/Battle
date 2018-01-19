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

feature 'Taking turns' do
  scenario 'attack button avaiable to player whose turn it is' do
  sign_in_and_play
  page.find_by_id("attack").tag_name
  end
end


feature 'Attacking Player' do
  scenario 'Attacking player receives confirmation of attack on defending player' do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content("Attack Ed")
  end

  scenario 'attacking player reduces defending player\'s Hit Points by 10' do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content("Ed takes damage of 10! #{$game.defending_player.hit_points}")
  end

end
