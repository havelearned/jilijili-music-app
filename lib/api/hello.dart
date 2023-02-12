import 'package:http/http.dart' as http;

String baseUrl = 'https://springboot-eemd-27195-4-1311278712.sh.run.tcloudbase.com';
// 异步方法
Future<String> sayHello() async {
  final response = await http.get(Uri.parse("$baseUrl/api/count"));
  if (response.statusCode == 200) {
    return response.body;
  }
  throw Exception("请求失败");
}
