// LEARNING DART OOP
// A simple Billing Printing Class
//
// Matteo

void main() {
  
  
  Order table1 = Order();
  table1.buy_item('Pizza Margherita', 7.50);
  table1.buy_item('Red wine', 1.50);
  table1.buy_item('Tiramisu', 3.50);
  
  table1.print_bill();
  
}

class Food {
  String name;
  double price;
  
  Food (this.name, this.price);
  
}

class Order {
  
  List <Food> _menu = [];
  
 
  
  
  buy_item(String name, double price) {
    _menu.add(Food(name, price));
      
  }
  
  print_bill(){
    int item_number = _menu.length;
    double total = 0;
    
    print('The Bill is:\n');
    
    for (int i = 0; i < item_number; i++){
      print(_menu[i].name  + '.....£' + _menu[i].price.toString()); 
      
      total = total + _menu[i].price;
    }
    
    print('\nTotal: ..... £' + total.toString());
  
  }  
}