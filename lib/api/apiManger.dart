import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/SourceResponse.dart';

class apiManger {
  //https://newsapi.org/v2/top-headlines/sources?apiKey=263b8ef3b6cb41e1aa193c089088ca13
  static const String baseUrl = 'newsapi.org';
  static const String apikey = '263b8ef3b6cb41e1aa193c089088ca13';

  Future<Source> getSources() async {
    var url =
        Uri.https(baseUrl, '/v2/top-headlines/sources', {'apiKey': apikey});
    var response = await http.get(url);
    var bodyString = response.body;
    var json = jsonDecode(bodyString);
    var sourceResponse = Source.fromJson(json);
    return sourceResponse;
  }
}
