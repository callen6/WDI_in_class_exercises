# do not inherit, do not use modules
# classes:
# Card attr: suit, value	method: color --> string "red" "black"
# make 10 cards to go in the deck
# Deck attr: many cards		method: draw 1 card --> return 1 card 	
# chaos orb --> draws card, removes from deck
# shuffle deck after cards are added
class Card
	attr_accessor :suit, :value
	def initialize(suit, value)
		@suit = suit
		@value = value
	end
	
	def suit_color
		if @suit == "hearts" || @suit == "diamonds"
		 return "red"
		elsif @suit == "clubs" || @suit == "spades"
		 return "black"
		else
		 retun "That's a holofoil Zapdos!"
		end
	end
end

c1 = Card.new("hearts", 10)
c2 = Card.new("diamonds", 4)
c3 = Card.new("spades", 7)
c4 = Card.new("clubs", "jack")
c5 = Card.new("hearts", 9)
c6 = Card.new("diamonds", 2)
c7 = Card.new("spades", "queen")
c8 = Card.new("clubs", 3)
c9 = Card.new("hearts", 3)
c10 = Card.new("diamonds", "ace")

# p c2.suit_color
# p c3.suit_color
# p c9.suit_color

cards = [c1, c2, c3, c4, c5, c6, c7, c8, c9, c10]

class Deck
	def initialize(card_deck)
		@many_cards = card_deck
	end
	def look_at_cards
		@many_cards
	end
	def draw_card_and_return
		@many_cards[rand(@many_cards.length)]
	end
	def chaos_orb
		@many_cards.delete(2)#(rand(@many_cards.length))
	end
	def shuffle_cards
		@many_cards.shuffle

	end

end

deck = Deck.new(cards)
# puts deck.look_at_cards
# puts deck.draw_card_and_return
puts deck.chaos_orb
# p deck.draw_card_and_return
# p deck.shuffle_cards

