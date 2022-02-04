import 'gender.dart';
import 'person.dart';
import 'student.dart';

class Teacher extends Person {
  String teacherNumber;
  final List<Student> students;

  Teacher({
    required this.teacherNumber,
    this.students = const [],
    idNumber,
    firstName,
    lastName,
    birthday,
    gender,
    address,
    phoneNumber,
  }) : super(
            idNumber: idNumber,
            firstName: firstName,
            lastName: lastName,
            birthday: birthday,
            gender: gender,
            address: address,
            phoneNumber: phoneNumber);

  // TODO: write method to search student.

  // TODO: write method to search course.

  // TODO: write method to add student.

  // TODO: write method to add course.

  // TODO: write method to remove student.

  // TODO: write method to remove course.

  // TODO: wirte method to add grade for specific student with specific course.
}
