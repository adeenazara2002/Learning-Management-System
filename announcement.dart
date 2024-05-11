import 'dart:io';

void main() {}

showAnnouncements() {
  print("********ANNOUNCEMENTS********");
  print("Anything you want to announce related to course or events");
  File announcementFile = File('announcement.txt');
  RandomAccessFile file = announcementFile.openSync(mode: FileMode.append);
  String makeAnnounce = stdin.readLineSync()!;
  file.writeStringSync("$makeAnnounce\n");
  print("Announcement made successfully!");
  file.closeSync();
}

displayAnnouncements() {

  File announcementFile = File('announcement.txt');
  List<String> announce = announcementFile.readAsLinesSync();

  if (announce.isEmpty) {
    print("No announcements yet");
  } else {
    for (var announcement in announce) {
      print(announcement);
    }
  }
}
