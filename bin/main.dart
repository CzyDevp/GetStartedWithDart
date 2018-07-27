import 'package:GetStartedWithDart/GetStartedWithDart.dart' as Calculator;
import 'Person.dart';
import 'StaticFamily.dart';
import 'dart:math';
import 'Libraries.dart';
//import 'package:http/http.dart' show get;  //only get method visible from library
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
  //basic operators call
  operatorSample();
  //class point call
  Point p = new Point(5,4)..y=10..printElement();   //chained call with object cool feature
  p.x = 10;
  print("Value of Object p's x ${p.get_x}");
  p.getBase(); //abstract method call
  Point.id =4001447;
  print('Static member ${Point.id}');
  Person  person =  new Person(12,'Nav Singh',5147921313);   //call to other file
  print(person.toString());
  Person  per =  new Person.nam(13,'Jim Singh',5017921313);   //call to other file
  print(per.toString());
  //static Check
  StaticFamily.fName = "Nav Singh";
  StaticFamily.greetByName();
  //libraries sample start here
  Libraries libraries = new Libraries();
  libraries.stringManipulation();
  Libraries.getChars();
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
//common use case of basic operators and conditional loops
operatorSample(){
  var list = [1,2,3];
  int a = 10, b=20;
  var c = b?? a; //if b not null assign b otherwise a
  print("Asign b or a to c $c");
  b??=a;  //assign if b initially not defined or null(by default)
  print("B after using ?? $b");
  //in version
  for (var x in list){
    print(x);
  }
  //as is is!
  if(a is int)     print("true");
  if(a is! String) print("a is ${a.runtimeType}");
  if(a>b)          print("A is greater than b");
  if(a<b)          print("B is greater than A");
  //conditional operator
  a>8? print("True $a is > 8"): print("Wrong");
  //choose switch if you have random but known cases
  switch(a){
    case 10:
      print("A is 10");
      break;
      //continue 'check1';
    //check1:
    case 1:
      print("A is 10");
      break;
    default:
      print("Default, Must provide Break in all cases");
      break;
  }
  //try-catch
  try{
       //throw new OutOfMemoryError();
      throw new Exception('Sorry I do not know what happen');  //rethrow
  }on OutOfMemoryError{
    print('Memory space is not available');
  }catch(e,s){
    print('Detected $e');
    print('Stack Trace is $s');  //print current stack related to an error
  }finally{
    print("always run");
  }
}
class Point extends BasePoint{
  static int id;
  int x,y;
  //factory keyword used to implement factory pattern
  Point(this.x,this.y);//{
   // x=x;
    //y=y;
  //}
  num get get_x => x;   //getter
  set set_x(x) => x;    //setter
  printElement(){
    print("Var is $x");
  }
  //abstract implementation goes here.....
  @override
  void getBase() {
    // TODO: implement getBase
    print('Hello from Abstract');
  }
}
//abstract class
/// [BasePoint] class used to maintain the
/// state of Base of shapes.
abstract class BasePoint{
  void getBase();
}





