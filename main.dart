import 'dart:io';
import 'loginF.dart';
import 'signUp.dart';


void main(){ 
  print("********LEARNING MANAGEMENT SYSTEM********");
  // int quizAttempts =0;
  
  while(true){
    print("1. Login");
    print("2. Sign up");
    print("Enter Your choice");

    var inp = int.parse(stdin.readLineSync()!);

     if(inp == 1){
      print("Enter Username");
      var userName = (stdin.readLineSync()!);

      print("Enter Password");
      var pass = (stdin.readLineSync()!);

      login(userName , pass);
      break;

  }

 // for signup
     else if(inp == 2){

    signUP();
    break;

  }

  }
}