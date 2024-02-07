import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/api_constants.dart';

class THttpHelper {

  static Future<Map<String, dynamic>> authenticate(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('${TAPIConstants.baseUrl}/$endpoint'), headers: {'Content-type': 'application/json'},
        body: json.encode(data)
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> get(String endpoint, String? token) async {
    final response = await http.get(
      Uri.parse('${TAPIConstants.baseUrl}/$endpoint'), headers: {'Content-type': 'application/json', 'Authorization': 'Bearer $token'}
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(String endpoint, String? token, dynamic data) async {
    final response = await http.post(
      Uri.parse('${TAPIConstants.baseUrl}/$endpoint'), headers: {'Content-type': 'application/json', 'Authorization': 'Bearer $token'},
        body: json.encode(data)
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(String endpoint, String? token, dynamic data) async {
    final response = await http.put(
      Uri.parse('${TAPIConstants.baseUrl}/$endpoint'), headers: {'Content-type': 'application/json', 'Authorization': 'Bearer $token'},
        body: json.encode(data)
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> delete(String endpoint, String? token) async {
    final response = await http.delete(
      Uri.parse('${TAPIConstants.baseUrl}/$endpoint')
    );
    return _handleResponse(response);
  }

    static Future<Map<String, dynamic>> _handleResponse(http.Response response) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}