import 'package:flutter/material.dart';
import 'package:x/net/testapi.dart';
import 'package:get/get.dart';
import 'customlist.dart';
import 'customsliver.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});
  void _sendPostRequest() async {
    // Response response = await TestProvider().testApi({"userId": '1'});
    // if (response.hasError) {
    //   //请求出错时

    // } else {
    //   //请求成功时，显示数据
    //   TestModel model = TestModel.fromJson(response.body);
    //   print('hhhhhhhh${model.id}');
    // }
    print(TestProvider().baseUrl);
    final response = TestProvider().testApi3();

    // Get.to(TestFreshPage());
  }

  void pushCustomListView() {
    Get.to(const CustomListViewPage());
  }

  void pushCustonSliver() {
    Get.to(const CustomSliverPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          child: Row(
            children: [
              MaterialButton(
                color: Colors.yellow,
                minWidth: 80,
                height: 40,
                onPressed: () => {_sendPostRequest()},
                splashColor: Colors.blueGrey,
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              MaterialButton(
                color: Colors.blue,
                minWidth: 80,
                height: 40,
                onPressed: () => {pushCustomListView()},
                splashColor: Colors.blueGrey,
                child: const Text(
                  'listview',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              MaterialButton(
                color: Colors.red,
                minWidth: 80,
                height: 40,
                onPressed: () => {pushCustonSliver()},
                splashColor: Colors.blueGrey,
                child: const Text(
                  'slivers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
