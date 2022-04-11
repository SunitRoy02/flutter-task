import 'dart:convert';

import 'package:demo_test/model/TaskModel.dart';
import 'package:http/http.dart' as http;

import 'apis.dart';

class HomeService {


 static Future getHomeScreenData() async {
   final res = await http.get(Uri.parse(taskApi));
   if(res.statusCode == 200){
     return TaskModel.fromJson(jsonDecode(res.body));
   }else{
     return null;
   }
  }
  
  
}