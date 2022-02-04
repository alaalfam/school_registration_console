import 'person.dart';
import 'teacher.dart';

class Student extends Person {
  String stNumber;
  final List<Teacher> teachers;

  Student({
    required this.stNumber,
    this.teachers = const [],
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

  // TODO: write method to search in teachers.

  // TODO: write method to search in course.

  // TODO: write method to add teacher to this student

  // TODO: write method to add course to this student

  // TODO: write method to remove teacher from this student.

  // TODO: write method to remove course from this student.

  // TODO: write method to show course grade.
}
