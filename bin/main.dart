import 'package:GetStartedWithDart/GetStartedWithDart.dart' as Calculator;
main(List<String> arguments) {
  var a = 10;
  print('''Hello world:\u{1f600} \u2665 
         ${Calculator.calculate()}!
         Value of a is: $a''');   //print multiline to console

  bool last_Name=true;   //default value of each object is null
  print(last_Name? 'Nav': 'jot');

  final int student_id = 4001447;  //lazy initialization
  print('Student id is : $student_id');
  //student_id = 89;    //uncomment to see the effect of final keyword
  const student_sex = 'F';
  print('Sex is : $student_sex');
  //student_sex = 'M';  //uncomment to see  the effect of const compile time checked error

  var list = [12,23,45];
  print('All set of studets : $list');

  var name = 'Bob';
  print('Name is $name');

  double marks_soen6441 = 46.789;
  String parsed_marks = marks_soen6441.toStringAsFixed(2);   //abs called
  print("Total marks $parsed_marks");

  var raw_string = r"Nav Singh's Raw Material\n";   //it will print special escape characters too
  print("Raw String is $raw_string");

  var gifts = {
    'first' : 'cake',
    'second' : 'Candies'
  }; //map    here key must be String (without new )

  var marks = new Map();   //here key can be any object
  marks[1]=67;
  marks[2]=78;

  gifts['third']='toys';  //adding new to map
  print('length is ${gifts.length}');    //expression must be in braces
  print('Thrid gift is : ${gifts['third']}');

  print('Sum is : ${printNumber(10)}');    //function call with hard-coded value

  //optional function call without Device
  print(say("Nav"));
  //optional function call with Device
  print(say("Nav","lcd"));

  //function as first class objects
  var list1 = [1,2,3];
  list1.forEach(printElement);

  //anonymous function
  var list2 = [1,23,34];
  list2.forEach((item) =>     print('Index is: ${list2.indexOf(item)} Value is: $item'));

  //closure
  var add = makeAdder(5); //store method in add
  var sum = add(5);
  print('Number is $sum');
  sum = add(10);
  print(sum);
}

//function examples
int printNumber(num number) =>  number +10 ;      // functional style
/*
{
   return  number + 10;
}
*/

//Optional parameters  positioned or named can have (default values_compile time_checked)
//optional with (?param) [] for positional params   //{}-> named optional
String say(name, [device]){
  var result ='';
  if(device!=null) {
     result = '$name tell me your $device name';
  }
  else{
    result = 'Device is not given';
  }
  return result;
}

//function as first class objects
printElement(element){
  print(element);
}

//closure example
Function makeAdder(num n){
  return (num i) => n + i;
}



