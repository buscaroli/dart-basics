/*
 * LEARNING MAPS IN DART
 */


main(){
  // Map that matches IDs to Staff names
  var staff = {
    111098 : "Margaret Smith",
    113463 : "Susan Evans",
    123298 : "Shioban O'Sullivan",
    119485 : "John Williams",
    120338 : "Matt Strongbow"
  };

  // Printing keys and values with inbuilt map functions
  print("List of IDs: ${staff.keys}");
  print("List of Names: ${staff.values}");

  // Printing keys and values with a lambda function:
  staff.forEach((key, value) => print(key));
  staff.forEach((x, y) => print(y));

  // Printing staff names with a comment on their status
  // within the Company
  staff.forEach((k, v){
    if (k <= 120000){
      print("${v} is a Senior member");
    } else{
      print("${v} is a Junior member");
    }
  });

  // Printing the value by passing the key
  print(staff[113463]);


}