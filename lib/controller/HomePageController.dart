import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  String baseUrl = "http://192.168.143.205:8080/employees";
  Map<String, String> getHeader() {
    return {
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }

  String updateEmployee() {
    return jsonEncode({
      "name": "lana",
      "age": 17,
      "location": "jenen",
      "email": "i dont have",
      "department": "sleep"
    });
  }

  Future<List<dynamic>> getEmployees() async {
    try {
      var url = Uri.parse(baseUrl);
      var response = await http.get(url, headers: getHeader());
      List<dynamic> employeesList = jsonDecode(response.body);
      return employeesList;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return [];
    }
  }

  Future<String> employeeDelete(int id) async {
    try {
      var url = Uri.parse("$baseUrl/employee?id=$id");
      var response = await http.delete(url, headers: getHeader());
      return response.body;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return "error";
    }
  }

  Future<String> employeeUpdate(int id) async {
    try {
      var url = Uri.parse("$baseUrl/employee/id=$id");
      var response =
          await http.put(url, headers: getHeader(), body: updateEmployee());
      return response.body;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return "error";
    }
  }
}
