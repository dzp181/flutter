import 'package:flutter/material.dart';

// class CustomSliverPage extends StatelessWidget {
//   const CustomSliverPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var listView = ListView.builder(
//       itemCount: 20,
//       itemBuilder: (_, index) => ListTile(title: Text('$index')),
//     );
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(child: listView),
//           const Divider(color: Colors.grey),
//           Expanded(child: listView),
//         ],
//       ),
//     );
//   }
// }

class CustomSliverPage extends StatelessWidget {
  const CustomSliverPage({super.key});

  @override
  Widget build(BuildContext context) {
    var search = SliverToBoxAdapter(
      child: SizedBox(
        height: 50,
        child: PageView(
          children: const [Expanded(child: Text('222222222'))],
        ),
      ),
    );

    var listView = SliverFixedExtentList(
      itemExtent: 56, //列表项高度固定
      delegate: SliverChildBuilderDelegate(
        (_, index) => ListTile(
          title: Text('$index'),
          onTap: () {
            print("$index");
          },
        ),
        childCount: 10,
      ),
    );

    return Scaffold(
        body: CustomScrollView(
      slivers: [search, listView, listView],
    ));
  }
}
