import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/SourceResponse.dart';
import 'package:news/api/newsResponse.dart';

class apiManger {

  //https://newsapi.org/v2/top-headlines/sources?apiKey=263b8ef3b6cb41e1aa193c089088ca13
  static const String baseUrl = 'newsapi.org';
  static const String apikey = '263b8ef3b6cb41e1aa193c089088ca13';

  static Future<SourceResponse> getSources(String categoryId) async {
    var url = Uri.https(baseUrl, '/v2/top-headlines/sources',
        {'apiKey': apikey, 'category': categoryId});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var sourceResponse = SourceResponse.fromJson(json);
      return sourceResponse;
    } catch (e) {
      throw e;
    }
  }

  //https://newsapi.org/v2/everything?q=bitcoin&apiKey=263b8ef3b6cb41e1aa193c089088ca13
  static Future<NewsResponse> getNews(String sourceId) async {
    var url = Uri.https(
        baseUrl, '/v2/everything', {'apiKey': apikey, 'sources': sourceId});

    var response = await http.get(url);
    var bodyString = response.body;
    var json = jsonDecode(bodyString);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }
}
