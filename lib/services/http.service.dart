import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  final String url;

  HttpService({required this.url});

  Future<http.Response>? post(String endpoint, Map body) {
    return http.post(Uri.parse(url + endpoint),
        headers: {"Content-Type": "application/json"}, body: jsonEncode(body));
  }
}
