class Person{
  int id;
  var name;
  int mobile;
  Person(this.id,this.name,this.mobile);
  /* this.id = id;
    this.name = name;
    this.mobile = mobile;
  }*/
  Person.nam(this.id,this.name,this.mobile);
  @override
  String toString() {
    return 'Person{id: $id, name: $name, mobile: $mobile}';
  }
}
class Imposter implements Person{

  @override
  int id;
  @override
  int mobile;
  @override
  var name;
  Imposter(this.id,this.mobile,this.name);
}