import 'dart:io';

class Dashboard {
  int? teacherNumber;
  int? studentNumber;
  int? courseNumber;

  void initStudentTeacherCourseNumber() {
    stdout.write('How many teacher do you have?');
    teacherNumber = int.parse(stdin.readLineSync()!);
    stdout.write('How many student do you have?');
    studentNumber = int.parse(stdin.readLineSync()!);
    stdout.write('How many course do you have?');
    courseNumber = int.parse(stdin.readLineSync()!);
  }

  // TODO write a method to get teachers object as list.

  // TODO write a method to get student object as list.

  // TODO write a method to get course object as list.

}
