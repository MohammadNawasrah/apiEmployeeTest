// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  late TextEditingController employeeName = TextEditingController();
  late TextEditingController employeeAge = TextEditingController();
  late TextEditingController employeeEmail = TextEditingController();
  late TextEditingController employeeLocation = TextEditingController();
  late TextEditingController employeeDepartment = TextEditingController();

  String baseUrl = "http://192.168.143.205:8080/employees";
  Map<String, String> getHeader() {
    return {
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }

  String updateEmployee() {
    return jsonEncode({
      "name": employeeName.text,
      "age": int.parse(employeeAge.text),
      "location": employeeLocation.text,
      "email": employeeEmail.text,
      "department": employeeDepartment.text
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

  Future<Map<String, dynamic>?> getEmployee(id) async {
    try {
      var url = Uri.parse("$baseUrl/$id");
      var response = await http.get(url, headers: getHeader());
      return jsonDecode(response.body);
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return null;
    }
  }

  Future<String> employeeDelete(int id) async {
    try {
      var url = Uri.parse("$baseUrl/employee?id=$id");
      var response = await http.delete(url, headers: getHeader());
      update();
      return response.body;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return "error";
    }
  }

  Future<String> employeeUpdate(int id) async {
    try {
      var url = Uri.parse("$baseUrl/employee/$id");
      var response =
          await http.put(url, headers: getHeader(), body: updateEmployee());
      update();
      return response.body;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return "error";
    }
  }

  Future<String> employeeSave() async {
    try {
      var url = Uri.parse("$baseUrl/employee");
      var response =
          await http.post(url, headers: getHeader(), body: updateEmployee());
      employeeAge.text = "";
      employeeName.text = "";
      employeeLocation.text = "";
      employeeEmail.text = "";
      employeeDepartment.text = "";
      update();
      return response.body;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return "error";
    }
  }
}
