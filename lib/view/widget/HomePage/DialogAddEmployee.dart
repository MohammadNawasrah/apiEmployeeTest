// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

class DialogAddEmployee extends StatelessWidget {
  const DialogAddEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(
          decoration: InputDecoration(label: Text("Name")),
        ),
        TextField(decoration: InputDecoration(label: Text("Age"))),
        TextField(decoration: InputDecoration(label: Text("Email"))),
        TextField(decoration: InputDecoration(label: Text("Location"))),
        TextField(decoration: InputDecoration(label: Text("Department"))),
      ],
    );
  }
}
