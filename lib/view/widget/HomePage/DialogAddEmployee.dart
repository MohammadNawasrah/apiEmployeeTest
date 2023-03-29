// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapi/controller/HomePageController.dart';

class DialogAddEmployee extends StatelessWidget {
  const DialogAddEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.put(HomePageController());
    return Column(
      children: [
        TextField(
          controller: homePageController.employeeName,
          decoration: const InputDecoration(label: Text("Name")),
        ),
        TextField(
            controller: homePageController.employeeAge,
            decoration: const InputDecoration(label: Text("Age"))),
        TextField(
            controller: homePageController.employeeEmail,
            decoration: const InputDecoration(label: Text("Email"))),
        TextField(
            controller: homePageController.employeeLocation,
            decoration: const InputDecoration(label: Text("Location"))),
        TextField(
            controller: homePageController.employeeDepartment,
            decoration: const InputDecoration(label: Text("Department"))),
      ],
    );
  }
}
