import 'package:path_provider/path_provider.dart';
import 'dart:io';

enum FileType { image, video, thumb }

Future<String> getPath(FileType fileType) async {
  Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
  String appDocumentsPath = appDocumentsDirectory.path;

  switch (fileType) {
    case FileType.image:
      appDocumentsPath += fileType.toString() + '.jpg';
      break;
    case FileType.video:
      appDocumentsPath += fileType.toString() + '.mp4';
      break;
    case FileType.thumb:
      appDocumentsPath += fileType.toString() + '.jpg';
      break;
  }
  return appDocumentsPath;
}
