// import 'dart:html';
import 'package:aqrabi2/src/model/productmodel.dart';
import 'package:aqrabi2/src/utils/config.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();
  // static final storage = FlutterSecureStorage();
  static Future<String> post(var body, String endpoint) async {
    var response = await client.post(buildUrl(endpoint),
        body: body, headers: {"Content-type": "application/json"});
    return response.body;
  }

  static Future<List<ProductModel>?> fetchCategories() async {
    var response = await client.get(Uri.parse(config.categoriesUrl));
    //  print("category json is empty");
    if (response.statusCode == 200) {
      var jsonString = response.body;
      // print(jsonString);
      return productModelFromJson(jsonString);
    } else {
      // print("category json is empty");
      return null;
    }
  }

  static Uri buildUrl(String endpoint) {
    String host = "http://192.168.43.59:5000/api/";
    final apiPath = host + endpoint;
    return Uri.parse(apiPath);
  }

  // static void storeToken(String accesstoken) async {
  //   await storage.write(key: "accesstoken", value: accesstoken);
  // }

  // static Future<String?> getToken(String accesstoken) async {
  //   return await storage.read(key: "accesstoken");
  // }
}
