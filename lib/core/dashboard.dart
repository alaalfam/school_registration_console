import 'dart:io';

import '../models/gender.dart';
import '../models/teacher.dart';

class Dashboard {
  List<Teacher> allTeachers = [];
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
    initTeacher();
    printAllteachers();
  }

  void initTeacher() {
    for (int i = 0; i < this.teacherNumber!; i++) {
      stdout.write('Enter your teacherNumber:');
      String teacherNumber = stdin.readLineSync()!;
      stdout.write('Enter your idNumber:');
      String idNumber = stdin.readLineSync()!;
      stdout.write('Enter your firstName:');
      String firstName = stdin.readLineSync()!;
      stdout.write('Enter your lastName:');
      String lastName = stdin.readLineSync()!;
      stdout.write('Enter your birthday:');
      String birthday = stdin.readLineSync()!;
      stdout.write('Enter your gender: (M/W)');
      String sexuality = stdin.readLineSync()!;
      Gender gender;
      if (sexuality == 'M') {
        gender = Gender.man;
      } else {
        gender = Gender.woman;
      }
      stdout.write('Enter your phoneNumber:');
      String phoneNumber = stdin.readLineSync()!;
      stdout.write('Enter your address:');
      String address = stdin.readLineSync()!;

      Teacher teacher = Teacher(
        teacherNumber: teacherNumber,
        idNumber: idNumber,
        firstName: firstName,
        lastName: lastName,
        birthday: birthday,
        gender: gender,
        phoneNumber: phoneNumber,
        address: address,
      );
      allTeachers.add(teacher);
    }
  }

  void printAllteachers() {
    for (var i = 0; i < this.allTeachers.length; i++) {
      stdout.writeln('teachers number: ${this.allTeachers[i].teacherNumber}');
      stdout.writeln('teachers idnumber: ${this.allTeachers[i].idNumber}');
      stdout.writeln('teachers firstname: ${this.allTeachers[i].firstName}');
      stdout.writeln('teachers lastname: ${this.allTeachers[i].lastName}');
      stdout.writeln('teachers birthday: ${this.allTeachers[i].birthday}');
      stdout.writeln('teachers gender: ${this.allTeachers[i].gender}');
      stdout
          .writeln('teachers phonenumber: ${this.allTeachers[i].phoneNumber}');
      stdout.writeln('teachers address: ${this.allTeachers[i].address}');

      print('-----------------------');
    }
  }
  // TODO write a method to get teachers object as list.

  // TODO write a method to get student object as list.
  void initStudents() {}

  void printStudents() {}

  // TODO write a method to get course object as list.

}
