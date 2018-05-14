import 'package:GetStartedWithDart/GetStartedWithDart.dart' as Calculator;

main(List<String> arguments) {
  var a = 10;
  print('''Hello world:\u{1f600} \u2665 ${Calculator.calculate()}!
         Value of a is: $a''');   //print multiline to console
  bool last_Name=true;   //default value of each object is null
  print(last_Name? 'Nav': 'jot');
  final int student_id = 4001447;
  print('Student id is : $student_id');
  //student_id = 89;    //uncomment to see the effect of final keyword
  const student_sex = 'F';
  print('Sex is : $student_sex');
  //student_sex = 'M';  //uncomment to see  the effect of const compile time checked error
  var list = [12,23,45];
  print('All set of studets : $list');
}
