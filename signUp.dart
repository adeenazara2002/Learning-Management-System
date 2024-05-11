import 'dart:io';

void signUP(){

  String? username;
  String? password;

  do{

    print("Enter Username");
    username = (stdin.readLineSync()!);

      if(username.isEmpty){
      print("Username cannot be empty");
      continue;
    }

    // validation for username

    List<String> firstSecondName = username.split(' ');
 
    if(firstSecondName.length != 2){
      print("Enter both first and second names seperatetd by space");
      continue;
    }

    String firstName = firstSecondName[0];
    String secondName = firstSecondName[1]; 

    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(firstName) || !RegExp(r'^[a-zA-Z]+$').hasMatch(secondName)) 
      {
    print("Usernames can only contain alphabets.");
    continue;
  }
break;

  }while(true);


do{

    print("Enter Password");
    password = (stdin.readLineSync()!);

      // Validation for password

       if(password.isEmpty){
      print("Password cannot be empty");
      continue;
    }

  if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@%^&*(){}[\]:;<>,./?~_+\-=|"\\]).{8,}$').hasMatch(password)) {
    print("Password must contain:");
    print("- At least 8 characters");
    print("- At least one uppercase letter");
    print("- At least one lowercase letter");
    print("- At least one digit");
    print("- At least one special character");
    continue;

  }
   break;

}while(true);

  // Filing

    File sign = File('studentsCred.txt');
    String content = '\n$username,$password\n';
    sign.writeAsStringSync(content, mode: FileMode.append);
    print("Account created Successfully");
}