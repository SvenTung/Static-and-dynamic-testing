### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  #This function should be a class level method not an instance otherwise you will need to initialize a CardGame object to call on these method.
  def checkforAce(card)
    if card.value = 1
      # card.value = 1 should be == 1 otherwise it just sets card.value to 1
      return true
    else
      return false
    end
  end

  #dif should be def instead. (card1 card2) should be (card1, card2). See first comment about the class level method.
  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card
    # this should return card1 not card
  else
    return card2
  end
end
#this end is should be deleted as there is one too many.
end

#self.cards_total should have the class name not self.
def self.cards_total(cards)
  # total is undefined and should be assigned to 0
  total
  for card in cards
    total += card.value
    #this return should be outside the for loop otherwise it will return on the first loop and not add up the rest of the cards.
    return "You have a total of" + total
    #total should be converted to a string otherwise it will not be able to be concatenated with the string.
  end
end
#the end of the class is here and requires an end.
```
