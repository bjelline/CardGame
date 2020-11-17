# frozen_string_literal: true

class Deck
  attr_reader :cards

  def initialize
    build_deck
    shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    raise 'Deck is empty' if deck_is_empty?

    @cards.pop
  end

  def deal_to(hand)
    hand.draw(deal)
  end

  def deck_is_empty?
    @cards.length.zero?
  end

  private

  def build_deck
    @cards = []
    Card.all_values.each_key do |value|
      Card.all_suits.each { |suit| @cards << Card.new(value, suit) }
    end
  end
end
