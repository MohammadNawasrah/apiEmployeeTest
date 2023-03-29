import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapi/controller/HomePageController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder(
          init: HomePageController(),
          builder: (controller) {
            return FutureBuilder(
              future: controller.getAllEmployee(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return RefreshIndicator(
                  onRefresh: () async {},
                  child: ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text("${snapshot.data?[index]["name"]}");
                    },
                  ),
                );
              },
            );
          }),
    );
  }
}
