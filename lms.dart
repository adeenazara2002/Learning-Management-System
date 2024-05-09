import 'dart:io';
void main() {
  var courses = <String, List<String>>{};

  while (true) {
    print('1. Add Course');
    print('2. Enroll Student');
    print('3. List Courses');
    print('4. Exit');
    print('Enter your choice:');
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addCourse(courses);
        break;
      case 2:
        enrollStudent(courses);
        break;
      case 3:
        listCourses(courses);
        break;
      case 4:
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void addCourse(Map<String, List<String>> courses) {
  print('Enter course name:');
  var courseName = stdin.readLineSync()!;
  courses[courseName] = [];
  print('Course $courseName added successfully.');
}

void enrollStudent(Map<String, List<String>> courses) {
  print('Enter student name:');
  var studentName = stdin.readLineSync()!;
  print('Enter course name to enroll student:');
  var courseName = stdin.readLineSync()!;
  if (courses.containsKey(courseName)) {
    courses[courseName]!.add(studentName);
    print('$studentName enrolled in $courseName.');
  } else {
    print('Course not found.');
  }
}

void listCourses(Map<String, List<String>> courses) {
  print('Courses:');
  courses.forEach((course, students) {
    print('$course: ${students.join(', ')}');
  });
}
