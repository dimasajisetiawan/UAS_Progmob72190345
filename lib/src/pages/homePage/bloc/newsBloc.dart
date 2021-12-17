import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/src/resources/repository.dart';
import 'newsEvent.dart';
import 'newsState.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final Repository repository;

  NewsBloc({this.repository}) : super(Loading());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if (event is Fetch) {
      try {
        yield Loading();
        final items = await repository.fetchAllNews();
        yield Loaded(items: items);
      } catch (error) {
        log("Error", error: error);
        yield Failure();
      }
    }
  }
}
