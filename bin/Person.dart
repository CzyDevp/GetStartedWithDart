class Person{
  int id;
  var name;
  int mobile;
  Person(id,name,mobile){
    this.id = id;
    this.name = name;
    this.mobile = mobile;
  }
  @override
  String toString() {
    return 'Person{id: $id, name: $name, mobile: $mobile}';
  }
}