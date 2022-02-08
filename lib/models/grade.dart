import 'package:school_registration_console/models/course.dart';
import 'package:school_registration_console/models/student.dart';
import 'package:school_registration_console/models/teacher.dart';

class Grade {
  Student student;
  Teacher teacher;
  Course course;
  double grade;

  Grade({
    required this.student,
    required this.teacher,
    required this.course,
    required this.grade,
  });

  // Write method to edit grade.

  // Write method to print grade.

}
