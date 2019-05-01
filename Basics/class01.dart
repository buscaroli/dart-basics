// My first program in Dart - Setting up a Class and playing with it

void main(){
  
  var dog1 = new Pet('Fufi', 'dog', 8, 'Howdy?'); 
  var dog2 = new Pet('Bobbi', 'dog', 12, 'Alright mate?'); 
  var dog3 = new Pet('Axel', 'dog', 4, 'Lets rock!');

  dog1.noise();
	dog2.noise();
	dog3.noise();

}

// Class
class Pet{
  String name;
  String breed;
  int age;
  String voice;
  
  // Constructor
  // The constructor is a special function that gets called
  // everytime a class object is instantiated
  Pet(this.name, this.breed, this.age, this.voice);
  
  // Method
  noise(){
    print('${this.name} says ${this.voice}');
  }
  
}