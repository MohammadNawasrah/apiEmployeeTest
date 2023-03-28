import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapi/controller/HomePageController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employees name"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GetBuilder(
          init: HomePageController(),
          builder: (controller) {
            return FutureBuilder(
              future: controller.getEmployees(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return RefreshIndicator(
                  onRefresh: () async {},
                  child: ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("${snapshot.data[index]["name"]}"),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                );
              },
            );
          }),
    );
  }
}
