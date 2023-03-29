// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'dart:ffi';

class Employee {
  late Long _id;
  late String _name;
  late int _age;
  late String _email;
  late String _location;
  late String _department;
  Long get getId => _id;
  String get getName => _name;
  int get getAge => _age;
  String get getEmail => _email;
  String get getLocation => _location;
  String get getDepartment => _department;
  set setAge(age) {
    _age = age ?? 0;
  }

  set setName(name) {
    _name = name ?? "";
  }

  set setId(id) {
    _id = id ?? 0;
  }

  set setEmail(email) {
    _email = email ?? "";
  }

  set setLocation(location) {
    _location = location ?? "";
  }

  set setDepartment(department) {
    _department = department ?? 0;
  }

  Employee(Long id, String name, int age, String email, String location,
      String department) {
    setId = id;
    setName = name;
    setAge = age;
    setEmail = email;
    setLocation = location;
    setDepartment = department;
  }
}
