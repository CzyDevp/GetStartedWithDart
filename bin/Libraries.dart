import 'dart:core';
class Libraries{
  static final String _source = "odd is even too";
  void stringManipulation(){
    print(_source.contains("is"));
    print(_source.startsWith('odd'));

  }
  static void getChars(){
     var chars = _source.split(" ");
     for(var word in chars){
       print(word);
     }
     print('$_source'[0]);   // o ll be send to console
     print('All the code values');
    var charCodes = _source.codeUnits;
    for(var code in charCodes){
      print(code);
    }
  }
}