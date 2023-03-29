// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapi/controller/HomePageController.dart';

import 'DialogAddEmployee.dart';

class AddEmployeeButton extends StatelessWidget {
  const AddEmployeeButton({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.find();

    Widget confirmButton() {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[400]),
          onPressed: () async {
            homePageController.employeeSave();
            Get.back();
          },
          child: const Text("save"));
    }

    Widget cancelButton() {
      return ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("cancel"));
    }

    return FloatingActionButton(
      onPressed: () {
        Get.defaultDialog(
            title: "Add employee data",
            content: const DialogAddEmployee(),
            cancel: cancelButton(),
            confirm: confirmButton());
      },
      backgroundColor: Colors.black,
      tooltip: "Add employee",
      child: const Icon(Icons.add),
    );
  }
}
