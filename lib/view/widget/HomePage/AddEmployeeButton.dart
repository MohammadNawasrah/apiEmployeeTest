// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DialogAddEmployee.dart';

class AddEmployeeButton extends StatelessWidget {
  const AddEmployeeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.defaultDialog(
            title: "Add employee data", content: const DialogAddEmployee());
      },
      backgroundColor: Colors.black,
      tooltip: "Add employee",
      child: const Icon(Icons.add),
    );
  }
}
