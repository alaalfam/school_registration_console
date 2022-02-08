import 'package:school_registration_console/models/course.dart';

import 'gender.dart';
import 'person.dart';
import 'student.dart';

class Teacher extends Person {
  String teacherNumber;
  final List<Student> students;
  final List<Course> courses;

  Teacher({
    required this.teacherNumber,
    this.students = const [],
    this.courses = const [],
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

  void addStudent(Student student) {
    students.add(student);
  }

  Student? searchInStudents(String studentsName) {
    for (int i = 0; i < students.length; i++) {
      if (students[i].firstName == studentsName) {
        return (students[i]);
      }
    }
  }

  void removeStudent(Student student) {
    students.remove(student);
  }

  void addCourse(Course course) {
    courses.add(course);
  }

  Course? searchInCourses(Course coursesName) {
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
