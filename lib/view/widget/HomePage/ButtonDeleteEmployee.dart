// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapi/controller/HomePageController.dart';

// ignore: must_be_immutable
class ButtonDeleteEmployee extends StatelessWidget {
  int i;
  AsyncSnapshot snapshot;
  ButtonDeleteEmployee({super.key, required this.i, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.put(HomePageController());
    Widget employeeDelete(int id) {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[400]),
          onPressed: () async {
            await homePageController.employeeDelete(id);
            Get.back();
          },
          child: const Text("delete"));
    }

    Widget cancel() {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 56, 138, 59)),
          onPressed: () {
            Get.back();
          },
          child: const Text("cancel"));
    }

    return Container(
      padding: const EdgeInsets.only(left: 2),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[400]),
          onPressed: () {
            Get.defaultDialog(
                title: "Delete Employee!",
                confirm: employeeDelete(snapshot.data?[i]["id"]),
                cancel: cancel());
          },
          child: const Icon(Icons.delete_forever_outlined)),
    );
  }
}
