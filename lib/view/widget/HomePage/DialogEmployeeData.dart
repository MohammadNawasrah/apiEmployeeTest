// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';

/*                                      Alert
this class show data use defaultDialog use ButtonDisplayEmployee when click on button will show data
*/

// ignore: must_be_immutable
class DialogEmployeeData extends StatelessWidget {
  AsyncSnapshot snapshotData;
  int indexData;
  DialogEmployeeData(
      {super.key, required this.snapshotData, required this.indexData});

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: const [
              Text("id :"),
              Text("name :"),
              Text("age :"),
              Text("email :"),
              Text("location :"),
              Text("department :"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(snapshotData.data[indexData]["id"].toString()),
              Text(snapshotData.data?[indexData]["name"] ?? ""),
              Text(snapshotData.data[indexData]["age"].toString()),
              Text(snapshotData.data?[indexData]["email"] ?? ""),
              Text(snapshotData.data?[indexData]["location"] ?? ""),
              Text("${snapshotData.data?[indexData]["department"] ?? ""}"),
            ],
          ),
        ),
      ],
    );
  }
}
