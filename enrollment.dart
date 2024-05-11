import 'dart:io';

enroll() {
  String? firstName;
  String? lastName;
  String? pass;
  String? UserName;

  print("Enter Students to enroll");

  // username

  do {
    print("Enter First name");
    firstName = stdin.readLineSync()!;

    print("Enter Last name");
    lastName = stdin.readLineSync()!;

    if (firstName.isEmpty) {
      print("Firstname cannot be empty");
      continue;
    }

    if (lastName.isEmpty) {
      print("Lastname cannot be empty");
      continue;
    }

    // validation for username

    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(firstName) ||
        !RegExp(r'^[a-zA-Z]+$').hasMatch(lastName)) {
      print("Usernames can only contain alphabets.");
      continue;
    }
    break;
  } while (true);

  // password
  do {
    print("Enter Password");
    pass = stdin.readLineSync()!;

    // Validation for password

    if (pass.isEmpty) {
      print("Password cannot be empty");
      continue;
    }

    if (!RegExp(
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@%^&*(){}[\]:;<>,./?~_+\-=|"\\]).{8,}$')
        .hasMatch(pass)) {
      print("Password must contain:");
      print("- At least 8 characters");
      print("- At least one uppercase letter");
      print("- At least one lowercase letter");
      print("- At least one digit");
      print("- At least one special character");
      continue;
    }
    break;
  } while (true);

  // Filing

  File enrol = File('enroll.txt');
  UserName = '\n$firstName $lastName';
  String content = '$UserName,$pass\n';
  enrol.writeAsStringSync(content, mode: FileMode.append);
  print("Account created Successfully");
}

seeEnrollments(){
  File seeEnroll = File('enroll.txt');
  List<String> enroll = seeEnroll.readAsLinesSync();

  if (enroll.isEmpty) {
    print("No enrollments yet");
  } else {
    for (var enroll in enroll) {
      print(enroll);
    }
  }
}
