import 'dart:convert';
import 'dart:io';


import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:owallet/resources/cache.dart';
import 'package:owallet/resources/globals.dart';

class ApiClient {
  static final String apiUrl = Globalvariable().apiUrl;
  Cache _cacheSystem = new Cache();
  String token;
  String globalApiExtension = "/api/";

  Future get(String link) async {
    token = await _cacheSystem.getData("userToken");
    final response = await http.get(Globalvariable().apiUrl + link, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode != 200) {
      print("error get: " + response.body);
      throw new Exception('error get');
    }else{
     // print("SUCCESS: " + response.body.toString());
    }
    return jsonDecode(response.body);
  }

  Future post(String link, body, {bool isFile = false}) async {
   token = await _cacheSystem.getData("userToken");

    final response = await http
        .post(Globalvariable().apiUrl + link, body: jsonEncode(body), headers: {
      "Content-Type":
          isFile == true ? "multipart/form-data" : "application/json",
      "Accept": "application/json",
      'Authorization': 'Bearer $token'
    });

    print("POST_RESPONSE: " + response.body.toString());

    return response;
  }

  Future patch(String link, body) async {
    token = await _cacheSystem.getData("userToken");

    final response = await http.patch(Globalvariable().apiUrl + link,
        body: jsonEncode(body),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/merge-patch+json",
          'Authorization': 'Bearer $token'
        });

    return response;
  }

  Future put(String link, body) async {
    token = await _cacheSystem.getData("userToken");

    final response = await http
        .put(Globalvariable().apiUrl + link, body: jsonEncode(body), headers: {
      "Accept": "application/merge-patch+json",
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token'
    });

    return response;
  }

  Future delete(String link) async {
    token = await _cacheSystem.getData("userToken");

    final response =
        await http.delete(Globalvariable().apiUrl + link, headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token'
    });

    return response;
  }
}
