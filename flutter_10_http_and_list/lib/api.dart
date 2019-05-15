import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.spacexdata.com/v3";

class API {
  static Future getRockets(){
    var url = baseUrl + "/rockets";
    return http.get(url);
  }
}