import 'package:school_registration_console/models/course.dart';

import 'person.dart';
import 'teacher.dart';

class Student extends Person {
  String stNumber;
  final List<Teacher> teachers;
  final List<Course> courses;

  Student({
    required this.stNumber,
    this.courses = const [],
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

  void addTeacher(Teacher teacher) {
    teachers.add(teacher);
  }

  Teacher? searchInTeacher(String teachersName) {
    for (int i = 0; i < teachers.length; i++) {
      if (teachers[i].firstName == teachersName) {
        return (teachers[i]);
      }
    }
  }

  void removeTeacher(Teacher teacher) {
    teachers.remove(teacher);
  }

  void addCourse(Course course) {
    courses.add(course);
  }

  Course? searchInCourse(String coursesName) {
    for (int i = 0; i < courses.length; i++) {
      if (courses[i].name == coursesName) {
        return (courses[i]);
      }
    }
  }

  void removeCourse(Course course) {
    courses.remove(course);
  }
}
