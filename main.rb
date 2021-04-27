require './game'
require './player'
require './question'

print "Enter Player 1 name: "
name1 = gets.chomp.to_s
print "Enter Player 2 name: "
name2 = gets.chomp.to_s
p1 = Player.new(name1)
p2 = Player.new(name2)

game = Game.new(p1, p2)

while game.player[0].life > 0 and game.player[1].life > 0 do

  puts "----- NEW TURN -----"
  question = Question.new
  print "#{game.current_player.name}: #{question.new_question}"
  answer = question.answer

  input = gets.chomp.to_i

  if input != answer
    game.minus_life
    print "WRONG!"
  else
    print "You're right!"
  end

  game.lives

  game.change_player
end
