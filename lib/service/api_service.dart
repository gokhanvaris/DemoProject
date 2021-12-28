import 'dart:convert';

import 'package:fluttergetx_app/models/api_service_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final _baseUrl = 'https://jsonplaceholder.typicode.com/posts/1';

  Future<ApiServiceModel> generateDetail() async {
    var response = await http.get(Uri.parse(_baseUrl));
    final responseBody = response.body;

    final Map<String, dynamic> decodedBody = jsonDecode(responseBody);
    final result = ApiServiceModel.fromJson(decodedBody);

    if (response.statusCode == 200) {
      return result;
    } else {
      throw Exception('something wrong');
    }
  }
}
