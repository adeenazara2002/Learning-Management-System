import 'dart:io';

void main() {}

showAnnouncements() {

  // print("********ANNOUNCEMENTS********");
  print("Anything you want to announce related to course or events");
  File announcementFile = File('announcement.txt');
  RandomAccessFile file = announcementFile.openSync(mode: FileMode.append);
  String makeAnnounce = stdin.readLineSync()!;
  file.writeStringSync("$makeAnnounce\n");
  file.closeSync();
}

displayAnnouncements(){
  print("********ANNOUNCEMENTS********");
  File announcementFile = File('announcement.txt');
  List<String> announce = announcementFile.readAsLinesSync();
  // for (var announcement in announce) {
  //     if(announce.isEmpty){
  //   print("No announcements yet");
  // }
  //   print(announcement);
  // }

    if (announce.isEmpty) {
    print("No announcements yet");
  } else {
    for (var announcement in announce) {
      print(announcement);
    }
  }




  
}
