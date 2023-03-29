// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testapi/model/Employee.dart';

class HomePageController extends GetxController {
  Map<String, String> header() {
    return <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }

  String baseUrl = "http://192.168.143.205:8080/employees";
  late Employee employee;
  Future getEmployees() async {
    try {
      var url = Uri.parse(baseUrl);

      var response = await http.get(url, headers: header());
      var x = jsonDecode(response.body);
      return x;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future deleteEmployee(int id) async {
    try {
      var url = Uri.parse('$baseUrl/employee?id=$id');
      await http.delete(url, headers: header());
      update();
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return null;
    }
  }

  void updateD() {
    update();
  }
}
