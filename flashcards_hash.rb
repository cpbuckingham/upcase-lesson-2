card1 = {
  :front => "cat",
  :back => "chat"
}
card2 = {
  front: "dog",
  back: "chien"
}
deck = [card1, card2]

deck.each do |card|
  front = card[:front]
  back = card[:back]
  print "#{front} > "
  guess = gets.chomp
  if guess == back
    puts "Correct"
  else
    puts "Incorrect the answer was #{back}"
  end
end