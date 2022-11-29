require '/Users/weston/Desktop/Turing/1mod/projects/war_or_peace/lib/card.rb'
class Deck
  attr_reader :cards, :high_ranking

  def initialize(cards)
    @cards = cards
    @high_ranking = []
  end



  def rank_of_card_at(num)
    @cards[num].rank
  end
  
  def high_ranking_cards
    @high_ranking = []
    @cards.each do |card|
      @high_ranking << card if card.rank >= 11
    end
    @high_ranking
  end

  def percent_high_ranking
    num1 = @high_ranking.size.to_f
    num2 = @cards.size.to_f
    percent = (num1 / num2)*100
    return percent.round(2)
  end

  def remove_card
    @cards.delete_at(0)
  end

  def add_card(card)
    @cards << card
  end

end