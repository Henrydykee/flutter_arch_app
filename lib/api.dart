import 'package:flutterarchapp/model.dart';
import 'package:http/http.dart' as http;

class API{
  static const String  BASE_URL = "https://rickandmortyapi.com/api";

  Future<http.Response> getCharacters() async {
    var url = "$BASE_URL/character";
    Map<String, String> headers = {'Content-Type': 'application/json'};
    return await http.get(url, headers: headers);
  }
}