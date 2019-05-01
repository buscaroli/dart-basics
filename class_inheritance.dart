/* LEARNING OOP WITH DART
 * INHERITANCE AND ABSTRACT CLASSES
 * 
 * Implementing 3 classes:
 *  - Human
 *  - Bird
 *  - Dragonfly
 * 
 * They all inherit from the Animal class, this is
 * implemented with the keyword 'extends'
 * 
 * Only Bird and Dragonfly implement functions related
 * to flying, this is done using the 'implements'
 * keyword
 * 
 * The class Leaf is a class that doesn't inherit from
 * Animal, however it implements Flying
 * 
 */

abstract class Animal{
  String name, sex;
  int age;

  Animal(this.name, this.sex, this.age);

  void act();
  void speak();
  void showName(){
    print('My name is ${this.name}');
  }
}

abstract class Flying{
  void takeOff();
  void landing();
}

class Human extends Animal{
  
  Human(String name, String sex, int age):super(name, sex, age);

  @override
  void act(){
    print('Human watches TV\n');
  }

  @override
  void speak(){
    print('Yawns\n');
  }
}

class Bird extends Animal implements Flying{
 
  Bird(String name, String sex, int age):super(name, sex, age);

  @override
  void act(){
    print('Circling in the sky\n');
  }

  @override
  void speak(){
    print('Bird wants a cracker!\n');
  }

  @override
  void takeOff(){
    print('Bird flying...\n');
  }

  @override
  void landing(){
    print('Ground fast approaching...\n');
  }

}

class Dragonfly extends Animal implements Flying{
 
  Dragonfly(String name, String sex, int age):super(name, sex, age);

  @override
  void act(){
    print('Looking for a flower in a pond\n');
  }

  @override
  void speak(){
    print('BZZzzzzzZZZZzzzz\n');
  }

  @override
  void takeOff(){
    print('Faster than light!\n');
  }

  @override
  void landing(){
    print('GET OUT!!');
  }

}

class Leaf implements Flying{
  String type_of_leaf;

  Leaf(String this.type_of_leaf);

  @override
  void takeOff(){
    print('The wind sends me high into the deep blue sky');
  }

  @override
  void landing(){
    print('Bad news: wind is gone...');
  }

  void sayType(){
    print('I am a ${type_of_leaf}');
  }
}


main(){
    
var matt = new Human('Matt', 'male', 41);
var polly = new Bird('Polly', 'male', 5);
var buggy = new Dragonfly('Buggy', 'male', 1);

matt.showName();
matt.speak();
polly.showName();
polly.speak();
polly.takeOff();
polly.landing();
buggy.showName();
buggy.takeOff();
buggy.landing();

var smallLeaf = new Leaf('Oak leaf');
smallLeaf.sayType();
smallLeaf.takeOff();
smallLeaf.landing();


}