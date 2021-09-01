void main () {
  
  var deck = new Deck();
  deck.printCards();
 
}

class Deck {
  
  List<Card> cards = [];
  
  Deck(){
    List<String> suits = ["Spade", "Hearts", "Clubs", "Diamonds"];
    List<String> ranks = ["Ace", "Two", "Three", "Four", "Five"];
    
    
//     for(int i=0; i<suits.length;i++) {
//       for(int j =0; j<ranks.length; j++) {
//         //create an instance to the list
        
//         var card = new Card(suits[i],ranks[j]);
//         //add that instance to the list
//         cards.add(card);
//       }
//     }
    
    for(var suit in suits){
      // suit -> Spade, Hearts, Clubs, Diamond
      for(var rank in ranks){
        // rank -> Ace, Two, Three, Four, Five
        var card = new Card(suit,rank);
        cards.add(card);
      }
      
    }
  }
 
  void printCards(){
    print(cards);
  }
  
}


class Card {
 
  String suit;
  
  String rank;
  
  Card(this.suit, this.rank);
  
  @override
  String toString(){
    return "$rank of $suit";
  }
  
  
}