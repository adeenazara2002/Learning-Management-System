import 'dart:io';

login(String userName, String pass) {
  File f = File('teachersCred.txt');
  var lines = f.readAsLinesSync();

// for teachers login

  for (var line in lines) {
    var splitted = line.split(',');
    if (splitted.length == 2 && splitted[0] == userName && splitted[1] == pass) 
        {
          print("Login Successful");
          return;
        }
        // handling password
        else if (splitted.length == 2 && splitted[0] == userName && splitted[1] != pass) 
        {
          print("Incorrect Password");
          break;
        }
          // handling Username
        else if (splitted.length == 2 && splitted[0] != userName && splitted[1] == pass) 
        {
          print("Incorrect Username");
          break;
          }
        
    // for students

    else if (splitted[0] != userName && splitted[1] != pass) {
      File fStudent = File('studentsCred.txt');
      var linesS = fStudent.readAsLinesSync();

      for (var lineS in linesS) {
        var splittedS = lineS.split(',');
        if (splittedS.length == 2 &&
            splittedS[0] == userName &&
            splittedS[1] == pass) {
          print("Login successful");
          return;
        }

                // handling password

        // else if (splittedS[0] == userName && splittedS[1] != pass) 
        // {
        //   print("Incorrect Password");
        //   break;
        // }

        //   // handling Username

        // else if (splittedS[0] != userName && splittedS[1] == pass) 
        // {
        //   print("Incorrect Username");
        //   break;
          // }
    
          // for Admin login
    
    else if (splitted[0] != userName && splitted[1] != pass) {
      File fAdmin = File('adminCred.txt');
      var linesA = fAdmin.readAsLinesSync();

      for (var lineA in linesA) {
        var splittedA = lineA.split(',');
        if (splittedA.length == 2 &&
            splittedA[0] == userName &&
            splittedA[1] == pass) {
          print("Login successful");
          return;
        }
        
                // handling password
        // else if (splittedA[0] == userName && splittedA[1] != pass) 
        // {
        //   print("Incorrect Password");
        //   break;
        // }

        //   // handling Username

        // else if (splittedA[0] != userName && splittedA[1] == pass) 
        // {
        //   print("Incorrect Username");
        //   break;
        //   }
      }
    }

    }
  }

  }
  print("Login Failed");

}


