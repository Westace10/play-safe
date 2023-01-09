import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:play_safe/app/app.logger.dart';
import 'package:play_safe/core/contants/network_constants.dart';

class APIService {
  final log = getLogger("APIService");
  APIService();

  Future<dynamic> delete(
    String route,
    Map<String, List>? body,
  ) async {
    log.v("getting data fro $route");
    var response = await http.patch(
      Uri.parse(baseUrl + route),
      headers: headers,
      body: jsonEncode(body),
    );
    log.v("the data fro $route is ${response.body}");
    return response.body;
  }

  Future<dynamic> get({
    required String route,
    Map<String, String>? queryParameters,
  }) async {
    log.v("getting data fro $route");
    var response = await http.get(
      Uri.parse(baseUrl + route),
      headers: headers,
    );
    log.v("the data fro $route is ${response.body}");
    return response.body;
  }

  Future<dynamic> patch(
    String route,
    Map<String, dynamic> body,
  ) async {
    log.v("getting data fro $route");
    var response = await http.patch(
      Uri.parse(baseUrl + route),
      headers: headers,
      body: jsonEncode(body),
    );
    log.v("the data fro $route is ${response.body}");
    return response.body;
  }

  Future<dynamic> post({
    required String route,
    required Map<String, dynamic> body,
  }) async {
    log.v("posting $body fro $route");
    var response = await http.post(
      Uri.parse(baseUrl + route),
      headers: headers,
      body: jsonEncode(body),
    );
    log.v("the data fro $route is ${response.body}");
    return response.body;
  }

  Future<dynamic> put(
    String route,
    Map<String, String> body,
  ) async {
    log.v("getting data fro $route");
    var response = await http.put(
      Uri.parse(baseUrl + route),
      headers: headers,
      body: jsonEncode(body),
    );
    log.v("the data fro $route is ${response.body}");
    return response.body;
  }
}
