// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/HomePageController.dart';
import 'DialogEmployeeData.dart';

class ButtonDisplayEmployee extends StatelessWidget {
  const ButtonDisplayEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomePageController(),
        builder: (controller) {
          return FutureBuilder(
            future: controller.getEmployees(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return RefreshIndicator(
                onRefresh: () async {
                  controller.update();
                },
                child: ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.defaultDialog(
                                  title: "Employee data",
                                  content: DialogEmployeeData(
                                    snapshotData: snapshot,
                                    indexData: index,
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black),
                            child: Text(
                                "${snapshot.data?[index]["name"] == null ? "noHave data" : snapshot.data[index]["name"]}"),
                          ),
                        )
                      ],
                    );
                  },
                ),
              );
            },
          );
        });
  }
}
