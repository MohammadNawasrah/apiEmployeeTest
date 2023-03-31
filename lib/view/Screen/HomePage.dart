// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../widget/HomePage/AddEmployeeButton.dart';
import '../widget/HomePage/ButtonDeleteEmployee.dart';
import '../widget/HomePage/ButtonDisplayEmployee.dart';

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
      body: const ButtonDisplayEmployee(),
      // Expanded(child: ButtonDeleteEmployee()),

      floatingActionButton: const AddEmployeeButton(),
    );
  }
}
