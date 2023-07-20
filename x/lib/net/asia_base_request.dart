import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "http://135.32.119.151:9512/";
    print('222');
    print(httpClient.baseUrl);
    // 请求拦截
    httpClient.addRequestModifier<void>((request) {
      return request;
    });

    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      return response;
    });
  }
}
