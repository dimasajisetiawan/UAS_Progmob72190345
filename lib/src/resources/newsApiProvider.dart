import 'dart:convert';

import 'package:flutter_news_app/src/helpers/constants.dart';
import 'package:flutter_news_app/src/models/newsResponseModel.dart';
import 'package:http/http.dart';

class NewsApiProvider {
  final String baseUrl = "http://192.168.3.252/flutter-uas/public";
  Client client = Client();
  final _apiKey = Constant.newsApiKey;

  Future<List<Article>> fetchNewsList({String category = ''}) async {
    var url =
        "${Constant.baseUrl}${Constant.topHeadLine}?country=id&apiKey=$_apiKey&category=$category";
    // print("entered Url : $url");
    final response = await client.get(url);
    // print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return NewsApiResonse.fromRawJson(response.body).articles;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<List<News>> getNews() async {
    final response = await client.get(Uri.parse("$baseUrl/api/flutter_uas72190345/"));
    if(response.statusCode==200){
      return newsFromJson(response.body);
    }else{
      throw Exception('Failed to load post');
    }

  }
}
