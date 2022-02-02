
import 'package:school_registration_console/models/gender.dart';

class Person {
  String idNumber;
  String firstName;
  String lastName;
  String birthday;
  Gender gender;
  String address;
  String phoneNumber;

  Person({
    required this.idNumber,
    required this.firstName,
    required this.lastName,
    required this.birthday,
    this.gender = Gender.woman,
    required this.address,
    required this.phoneNumber,
  });
}
