import 'dart:core';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DataManager{
  late String textFile;

  //constructor  used to create a file object
  DataManager({required this.textFile});

  //retrieves a local directory (will create if doesn’t exist)
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    final Directory folder = Directory(directory.path);
    return folder.path;
  }

  //retrieves the file that will be used to write the data(will create if doesn’t exist)
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/wht_files/$textFile.txt');
  }
  
  //writes data to selected file
  Future<bool> writeText(List<String>textList) async {
    try{
      final file = await _localFile;
      final writer = file.openWrite();
      //write each element on a new line
      for(String element in textList){
        writer.writeln(element);
      }
      //close the file
      await writer.close();
      return true;
    }catch(e){
      return false;
    }

  }

Future<List<String>> readFile() async{
    List<String> contents = [];
    try {
      final file = await _localFile;
      contents = await file.readAsLines();
      return contents;
    } catch (e) {
      contents = ['error...cant read file'];
      return contents;
    }
  }

  Future<String> deleteFile() async{
     try{
      final file = await _localFile;
      await file.delete();
     }catch (e){
       return "$_localFile cannot be deleted";
     }
     return "$_localFile has been successfully deleted";
  }
}
