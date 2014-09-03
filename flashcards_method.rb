class Application
  def initialize
    @decks = []
  end

  def << deck
    @decks << deck
  end

  def play
    display_decks
    print "pick a deck: "
    deck = get_deck
    deck.play
  end

  def display_decks
    @decks.each { |deck| puts deck.name}
    end

    def get_deck
      name = gets.chomp
      @decks.detect { |deck| deck.name == name}
      end
    end

  class Card
    attr_accessor :front, :back

    def initialize (front, back)
      @front = front
      @back = back
    end

    def correct? guess
      guess == @back
    end

    def play
      print "#{front} > "
      guess = gets.chomp
      if correct? guess
        puts "Correct!"
      else
        puts "Incorrect, the correct answer is #{back}"
      end
    end
  end

  class Deck
    attr_reader :name, :cards

    def initialize name
      @name = name
      @cards = []
    end

    def << card
      @cards << card
    end

    def play
      shuffle
      @cards.each { |card| card.play} #@cards.each(&:play)
      end
    end

    def shuffle
      @cards.shuffle!
    end

    card1 = Card.new("cat", "chat")
    card2 = Card.new("dog", "chien")
    card3 = Card.new("pool", "piscine")
    deck = Deck.new("French")
    deck << card1
    deck << card2
    deck << card3

    card4 = Card.new("cat", "neko")
    card5 = Card.new("dog", "inu")
    card6 = Card.new("snake", "hebi")
    deck2 = Deck.new("Japanese")
    deck2 << card4
    deck2 << card5
    deck2 << card6


    app = Application.new
    app << deck
    app << deck2
    app.play
