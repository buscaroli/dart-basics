/* DART LANGUAGE
 * LEARNING COLLECTIONS
 * Printing collections of base types and 
 * Printing collections of Classes
 */

class Student{
  String name;
  int year;
  double score;

  // Constructor
  Student(this.name, this.year, this.score);

  // Getters
  String get getName => name;
  int get getYear => year;
  double get getScore => score;

  // Setters
  set setName(String x) => name = x;
  set setYear(int x) => year = x;
  set setScore(double x) => score = x;
  
  // Methods
  @override
  String toString(){
    return "Name: ${name}, Year: ${year}, Score: ${score}";
  }
}

void myPrint(var x){
  print("> ${x}");
}

main(){

  // A list made up of multiple types
  var list = [1, 3, 5, 7, 9, 2, 4, 6, 8];

  for (int i = 1; i < list.length; i++){
    print(list[i]);
  }

  // A list of strings (String objects)
  var words = new List<String>();

  words.add('Coffee');
  words.add('Tea');
  words.add('Amusing');
  words.add('Serendipity');
  words.add('Book');
  words.add('Cozy');

  // printing the list with a index:
  for (int i = 0; i < words.length; i++){
    print("${i}: words[i]");
  }

  // printing using the forEach method:
  words.forEach(print);

  // printing using a personalized function
  words.forEach(myPrint);

  // List of Student objects
  var studentList = new List<Student>();

  Student matt = new Student("Matt Smith", 3, 8.5);
  Student john = new Student("John Williams", 2, 7.8);
  Student carla = new Student("Carla Evans", 4, 8.2);

  studentList.add(matt);
  studentList.add(john);
  studentList.add(carla);

  // Pretty-printing the properties of each student, made
  // possible by overriding the toString() method
  studentList.forEach(print);

}