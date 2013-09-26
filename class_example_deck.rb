class Deck
	def initialize
		@cards = []
		@cards << Card.new("hearts", "ace")
		@cards << Card.new("hearts", "queen")
		@cards << Card.new("hearts", "king")
		@cards << Card.new("hearts", "jack")
		@cards << Card.new("hearts", "2")
		@cards << Card.new("hearts", "3")
		@cards << Card.new("hearts", "4")
	end
	def cards
		@cards
	end
	def draw_card
		@cards[rand(1..@cards.length)]
	end
	def chaos_orb
		c = draw_card
		@cards.delete(c)
		return c
	end
	def length
		@cards.legth
	end
end

d = Deck.new
c = d.chaos_orb
puts d.length
puts c.value
puts c.suit
class Card
	attr_accessor :suit, :value
	def initialize(suit, value)
		@suit = suit
		@value = value
	end
	
	def suit_color
		if @suit == "hearts" || @suit == "diamonds"
		 return "red"
		else @suit == "clubs" || @suit == "spades"
		 return "black"
		end
	end
end