import 'dart:io';
void main(){


}

void signUP(){

  List<int> digits = [0,1,2,3,4,5,6,7,8,9];
  List<String> specialChar = ['!','@','%','^','&','{','}','(',')','.','"'];

    print("Enter User Name");
    String username = (stdin.readLineSync()!);

    print("Enter Password");
    String password = (stdin.readLineSync()!);

    if(username == '1234567890' && username == '£!@%^&*+_()-/><~&'){
      print("User names only contains alphabets"); 
      if(password == password.toUpperCase() || password == password.toLowerCase()){
        print("Password must contains:");
        print("Any uppercase alphabets");
        print("Any lowercase alphabets");
        print("Atleast one special character");
        print("Any digit");
      }
      else if(username == username.toUpperCase() && username == username.toLowerCase() && password == password.toUpperCase() && password == password.toLowerCase() && password == '1234567890'){

      }
    }


    File sign = File('signUp.txt');
    String content = '$username,$password\n';
    sign.writeAsStringSync(content, mode: FileMode.append);
    print("Account created Successfully");
}