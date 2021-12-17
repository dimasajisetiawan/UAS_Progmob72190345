import 'package:equatable/equatable.dart';
import 'package:flutter_news_app/src/models/newsResponseModel.dart';


abstract class NewsDetailEvent extends Equatable{
  const NewsDetailEvent();

  @override
  List<Object> get props => [];
}

class SelectNewsForDetail extends NewsDetailEvent {
  final News news;
  const SelectNewsForDetail({this.news});

  @override
  String toString() => 'SelectNewsForDetail Page { Title:: ${news.judul_berita} }';
}

class SelectNewsForDetailed extends NewsDetailEvent {
  final News news;
  const SelectNewsForDetailed({this.news});

    @override
  String toString() => 'SelectNewsForDetailed news { Title: ${news.judul_berita} }';
}