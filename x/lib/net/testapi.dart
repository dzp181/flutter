import 'package:x/net/asia_base_request.dart';
import 'package:get/get.dart';

class TestProvider extends BaseProvider {
  Future<Response> testApi(Map data) =>
      post('http://jsonplaceholder.typicode.com/posts', data);

  Future<Response> testApi2() =>
      get('http://jsonplaceholder.typicode.com/posts');

  Future<Response> testApi3() => get('/gzzs-web/bizReq');
}
