// Learning the Basics of Dart 
//
// Implementing a Deck Class and an associated Card Class
// with methods relevant to a possible card game.
// 
// Based on the Udemy Class by Stephen Grider

void main(){
  var deck = new Deck();
  deck.shuffle();
  //print(deck);
  // NB print(deck) calls the method toString() on the list deck.
  // We have defined a toString method in rhe Class Deck that 
  // returns cards.toString() which in turn will call the
  // toString method of the Class Card which returns '$rank of $suit'
  
  print(deck.cardsWithSuit('Hearts'));
  
  print(deck); // full deck
  print(deck.deal(5)); // hand of 5 cards
  print(deck); // deck minus 5 cards
  
  var deck2 = new Deck();
  print(deck2);
  deck2.removeCard('Ace', 'Spades');
  print(deck2);
}

class Deck {
  List<Card> cards = [];
  
  // Constructor
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven'
                'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
    var suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades'];
    
    for (var suit in suits){
      for (var rank in ranks){
        var card = new Card(suit, rank);
        cards.add(card);
      }
    }  
  } // end of Constructor
  
  toString(){
    return cards.toString();
  }
  
  shuffle(){
    // shuffle() is a method part of dart::core -> List
    return cards.shuffle();
  }
  
  // String is not essential, Dart can infer the type
  cardsWithSuit(String x){
    // where() is a filtering method part of dart::core -> List
    return cards.where((card){
      return card.suit == x;
    });
  }
  // Possible refactoring using arrow syntax to make it shorter,
  // useful for single statement expressions:
  //cardsWithSuit(String x){
  //  return cards.where((card) => card.suit == x);
  //}
  
  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    
    return hand;
  }
  
  removeCard(String x, String y){
    return cards.removeWhere((card) => (card.rank == x && card.suit == y));
  }
  
}

class Card {
	String suit;
  String rank;
  
  Card(this.suit, this.rank){
    
  }
  
  toString(){
    return '${rank} of ${suit}';
  }
}