class Card
  def initialize (front, back)
    @front = front
    @back = back
  end
  def front
    @front
  end
  def back
    @back
  end
end

card1 = Card.new("cat", "chat")
card2 = Card.new("dog", "chien")

class Card
#   *attr_reader :front, :back
#   *attr_writer :front, :back
    attr_accessor :front, :back

  def initialize (front, back)
    @front = front
    @back = back
  end
    def correct? guess
      guess == @back
    end
end

class Deck
  attr_reader :cards
def initialize name
  @name = name
  @cards = []
end
  def << card
    @cards << card
  end
  def shuffle
    @cards.shuffle! #@cards = @cards.shuffle (+bang)
  end
end
card1 = Card.new("cat", "chat")
card2 = Card.new("dog", "chien")
card3 = Card.new("pool", "piscine")

deck= Deck.new ("French")
deck << card1
deck << card2
deck << card3

deck.shuffle

deck.cards.each do |card|
  front = card.front
  back = card.back

  print "#{front} > "
  guess = gets.chomp

  if card.correct?(guess)
    puts "Correct"
  else
    puts "Incorrect the answer was #{back}"
  end
end

