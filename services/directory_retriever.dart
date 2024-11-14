import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DirectoryRetriever{
  List<FileSystemEntity> files = [];
  late String subFolder = 'workHourTracker';
  DirectoryRetriever();

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    final Directory folder = Directory("$directory/$subFolder");
    return folder.path;
  }

  Future<List<FileSystemEntity>> fileList() async {
      files = (await _localPath) as List<FileSystemEntity>;
      return files;
  }
}
