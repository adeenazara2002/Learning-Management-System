import 'dart:io';

addCourses() {
  print("Enter Course you want to add");
  // String course = stdin.readLineSync()!;

  File courseFile = File('course.txt');
  RandomAccessFile file = courseFile.openSync(mode: FileMode.append);
  String courseAdd = stdin.readLineSync()!;
  file.writeStringSync("$courseAdd\n");
  print("Course added sucessfully!");
  file.closeSync();
}

displayCourses() {
  print("*****COURSES*****");
  File courseFile = File('course.txt');
  List<String> courseList = courseFile.readAsLinesSync();

if(courseList.isEmpty){
  print("No Courses to show");
}
else{
    for (var course in courseList) {
      print(course);
    }
  }
}




