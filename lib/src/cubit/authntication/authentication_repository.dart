import 'dart:convert';
import 'package:new_cubit/src/helpers/file_helper.dart';
import 'package:new_cubit/src/helpers/storage_helper.dart';
import 'package:new_cubit/src/models/User_data.dart';
class AuthenticationRepository{
 readUserDataFile() async{
  String path ="assets/data/user_data.json";
  String rawData = await fileHelper.readJSONFile(path);
  List<dynamic> decodedData =jsonDecode(rawData);
  List<UserData> userList = decodedData.map((jsonObjectMap)=> UserData.fromJson(jsonObjectMap))
  .toList();



  return userList;
 }
}