void main() {
  Student s = Student("Sabbir");
  Player pl = Player("Sakib");
  Employee e = Employee("Akash");
  final List<Person> persons = [s, pl, e];
  for (final person in persons) {
    checkWalk(person);
  }
}
void checkWalk(Person p) {
print(p.walk());
}




  class Person {
    String name;
    Person(this.name);
    String walk() => "A person is walking";
    String eat() => "A person is eating";
  }
  class Student extends Person {
    Student(String name) : super(name);
    String getDepartment() => "CSE";
    @override
  String walk() => "A Student is walking";
  }
  class Player extends Person {
    Player(String name) : super(name);
    String play() => "A player is playing";
    @override
  String walk() => "A Player is walking";
  }
  class Employee extends Person {
    Employee(String name) : super(name);
    double drawSalary() => 50000;
    @override
  String walk() => "An Employee is walking";
  }



