import 'package:flutter/material.dart';

class CustomListViewPage extends StatelessWidget {
  const CustomListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      itemCount: 100,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: .0);
      },
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
    ));
  }
}



// class CustomListViewPage extends StatelessWidget {
//   const CustomListViewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView.builder(
//       itemCount: 100,
//       itemExtent: 50.0,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//           leading: const CircleAvatar(
//             backgroundImage:
//                 NetworkImage("https://i.stack.imgur.com/Dw6f7.png"),
//           ),
//           title: Text("$index"),
//           trailing: const Icon(Icons.keyboard_arrow_right),
//           onTap: () {
//             print("$index");
//           },
//         );
//       },
//     ));
//   }
// }
