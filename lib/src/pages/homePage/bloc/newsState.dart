import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/src/models/newsResponseModel.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class Loading extends NewsState {}

class Loaded extends NewsState {
  final List<News> items;

  const Loaded({@required this.items});

  @override
  List<Object> get props => [items];

  @override
  String toString() => 'Loaded { items: ${items.length} }';
}

class Failure extends NewsState {}
