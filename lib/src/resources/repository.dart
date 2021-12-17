import 'package:flutter_news_app/src/models/newsResponseModel.dart';
import 'newsApiProvider.dart';

class Repository {
  // final moviesApiProvider = NewsApiProvider();
  // Future<List<Article>> fetchAllNews({String category = ''}) => moviesApiProvider.fetchNewsList(category:category);
  final beritasApiProvide = NewsApiProvider();
  Future<List<News>> fetchAllNews() => beritasApiProvide.getNews();
}