import 'dart:io';
import '../models/course.dart';
import '../models/gender.dart';
import '../models/teacher.dart';
import '../models/student.dart';

class Dashboard {
  List<Teacher> allTeachers = [];
  List<Student> allStudents = [];
  List<Course> allCourses = [];
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
    initStudent();
    printAllStudents();
    initCourse();
    printAllCourse();
  }

  void initTeacher() {
    for (int i = 0; i < teacherNumber!; i++) {
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
    for (var i = 0; i < allTeachers.length; i++) {
      stdout.writeln('teachers number: ${allTeachers[i].teacherNumber}');
      stdout.writeln('teachers idnumber: ${allTeachers[i].idNumber}');
      stdout.writeln('teachers firstname: ${allTeachers[i].firstName}');
      stdout.writeln('teachers lastname: ${allTeachers[i].lastName}');
      stdout.writeln('teachers birthday: ${allTeachers[i].birthday}');
      stdout.writeln('teachers gender: ${allTeachers[i].gender}');
      stdout.writeln('teachers phonenumber: ${allTeachers[i].phoneNumber}');
      stdout.writeln('teachers address: ${allTeachers[i].address}');

      print('-----------------------');
    }
  }

  void initStudent() {
    for (int i = 0; i < studentNumber!; i++) {
      stdout.write('Enter your stNumber:');
      String stNumber = stdin.readLineSync()!;
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

      Student student = Student(
        stNumber: stNumber,
        idNumber: idNumber,
        firstName: firstName,
        lastName: lastName,
        birthday: birthday,
        gender: gender,
        phoneNumber: phoneNumber,
        address: address,
      );
      allStudents.add(student);
    }
  }

  void printAllStudents() {
    for (var i = 0; i < allStudents.length; i++) {
      stdout.writeln('student number: ${allStudents[i].stNumber}');
      stdout.writeln('student idnumber: ${allStudents[i].idNumber}');
      stdout.writeln('student firstname: ${allStudents[i].firstName}');
      stdout.writeln('student lastname: ${allStudents[i].lastName}');
      stdout.writeln('student birthday: ${allStudents[i].birthday}');
      stdout.writeln('student gender: ${allStudents[i].gender}');
      stdout.writeln('student phonenumber: ${allStudents[i].phoneNumber}');
      stdout.writeln('student address: ${allStudents[i].address}');

      print('-----------------------');
    }
  }

  void initCourse() {
    for (var i = 0; i < courseNumber!; i++) {
      stdout.write('Enter course name:');
      String name = stdin.readLineSync()!;
      stdout.write('Enter grade number:');
      double grade = double.parse(stdin.readLineSync()!);

      Course course = Course(name: name, grade: grade);
      allCourses.add(course);
    }
  }

  void printAllCourse() {
    for (var i = 0; i < allCourses.length; i++) {
      stdout.writeln('Course name: ${allCourses[i].name}');
      stdout.writeln('Course grade: ${allCourses[i].grade}');

      print('-----------------------');
    }
  }
}
