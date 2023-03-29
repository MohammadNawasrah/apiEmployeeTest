import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  // HomePageController() {
  //   getAllEmployee();
  // }
  Future getAllEmployee() async {
    try {
      var url = Uri.http('192.168.143.205:8080', '/employees');
      var response = await http.get(url);
      var x = jsonDecode(response.body);
      return x;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
