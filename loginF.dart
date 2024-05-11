import 'dart:io';
import 'announcement.dart';
import 'addCourses.dart';
import 'enrollment.dart';


void login(String userName, String pass) {
  File teachersFile = File('teachersCred.txt');
  File studentsFile = File('studentsCred.txt');
  File adminFile = File('adminCred.txt');

  List<String> teacherLines = teachersFile.readAsLinesSync();
  List<String> studentLines = studentsFile.readAsLinesSync();
  List<String> adminLines = adminFile.readAsLinesSync();

  bool isLoggedIn = false;

  // Teacher login
  for (var line in teacherLines) {
    var splitted = line.split(',');
    if (splitted.length == 2 &&
        splitted[0] == userName &&
        splitted[1] == pass) {
      print("Teacher login successful");
      isLoggedIn = true;

      // Implement Teacher's portal functionality here

      print("Teacher Portal");
      print("*********************");
      print("1.Make Announcements");
      print("2.Upload Assginments");
      print("3.Upload Quizes");
      print("4.View Quizes");
      print("Enter Your Choice: ");


      int input = int.parse(stdin.readLineSync()!);

      if (input == 1) {
        showAnnouncements();
      }
      break;
    }
  }

  // Student login
  if (!isLoggedIn) {
    for (var line in studentLines) {
      var splitted = line.split(',');
      if (splitted.length == 2 &&
          splitted[0] == userName &&
          splitted[1] == pass) {
        print("Student login successful");
        isLoggedIn = true;

        // Implement student portal functionality here

        print("Student Portal");
        print("*********************");
        print("1.View Announcements");
        print("2.Attempt Quiz");
        print("3.View Courses");
        print("4.View Assignments");
        print("Enter Your Choice: ");


        int input = int.parse(stdin.readLineSync()!);

// Announcement Section
        if (input == 1) {
          // print("No Announcements yet");
          displayAnnouncements();
          break;
        }
// Courses Section

        if (input == 3) {
          // print("Courses");
          displayCourses();
          break;
        }

// Assignments Section

        if (input == 4) {
          print("Assignments");
          break;
        }

        // QUIZ Functionality

        do {
          if (input == 2) {
            print("Start Quiz?");
            print("Yes or No");
            String reply = stdin.readLineSync()!;
            if (reply == "Yes") {
              print("Quiz Start");
              print("");
              int score = 0;
              print("INSTRUCTIONS: Type only number against correct answer");
              print("");
              print("Q1 - What is Dart?");
              print("1. Dart is a object-oriented programming language");
              print("2. Dart is used to create a frontend user interfaces");
              print("3. Both of the above");
              print("4. None of the above");
              int quizResponse = int.parse(stdin.readLineSync()!);
              if (quizResponse == 1) {
                print("Correct Answer");
                score++;
              }
              print("");

              // Q2

              print(
                  "Q2 .What will be the output of this program : void main() {int num; print(num); }");
              print("1. Error");
              print("2. num");
              print("3. null");
              print("4. None of these");
              int quizResponse2 = int.parse(stdin.readLineSync()!);
              if (quizResponse2 == 1) {
                print("Correct Answer");
                score++;
              }
              print("");

              // Q3

              print("Q1 - Which framework uses dart?");
              print("1. Java");
              print("2. Python");
              print("3. Flutter");
              print("4. React");
              int quizResponse3 = int.parse(stdin.readLineSync()!);
              if (quizResponse3 == 3) {
                print("Correct Answer");
                score++;
                print("Your final score of the quiz is: $score");
                break;
              }
            }

            if (reply == "No") {
              print("Exit");
              break;
            }

            if (reply != "Yes" || reply != "No") {
              print("Type only 'Yes' or 'No'");
              continue;
            }
          }
        } while (true);

        break;
      }
    }
  }

  // Admin login
  if (!isLoggedIn) {
    for (var line in adminLines) {
      var splitted = line.split(',');
      if (splitted.length == 2 &&
          splitted[0] == userName &&
          splitted[1] == pass) {
        print("Admin login successful");
        isLoggedIn = true;

        // Implement student portal functionality here
        // looping
        
          print("Admin Portal");
          print("*********************");
          print("1.Add Courses");
          print("2.Enroll Students");
          print("3.List Courses");
          print("4.List Students");


          // print("4. Exit");
          print("Enter Your Choice: ");

          // print("4.View Assignments");

          int adminReply = int.parse(stdin.readLineSync()!);
          if (adminReply == 1) {
            addCourses();
            break;
      
          }

          if (adminReply == 3) {
            displayCourses();
            break;
            
          }

          
          if (adminReply == 2) {
            enroll();
            break;
            
          }

            if (adminReply == 4) {
            seeEnrollments();
            break;
            
          }
        
        break;
      }
    }
  }

  if (!isLoggedIn) {
    print("Login failed");
  }
}
