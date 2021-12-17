import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/src/commonWidget/customWidget.dart';
import 'package:flutter_news_app/src/models/newsResponseModel.dart';
import 'package:flutter_news_app/src/pages/newsDetail/bloc/bloc.dart';
import 'package:flutter_news_app/src/theme/theme.dart';
import 'bloc/bloc.dart';
import 'widget/newsCard.dart';

class HomePage extends StatelessWidget {
  Widget _headerNews(News news) {
    String urlFoto = 'https://picsum.photos/seed/picsum/500/300';
    return Builder(
      builder: (context) {
        return InkWell(
            onTap: () {
              final detailBloc = BlocProvider.of<DetailBloc>(context);
              detailBloc.add(SelectNewsForDetail(news: news));
              Navigator.pushNamed(context, '/detail');
            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Hero(
                  tag: 'headerImage',
                  child: customImage(urlFoto),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 10, bottom: 20, top: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.transparent],
                      // stops: [.1, .9],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(news.judul_berita,
                          style: AppTheme.h4Style.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onSurface)),
                      Text(
                        news.tanggal_berita,
                        style: AppTheme.subTitleStyle.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      )
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }

  Widget _body(
    BuildContext context,
    List<News> list, {
    String kategori,
  }) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          title: Text(
            'DAFTAR NEWS',
            style: AppTheme.h2Style
                .copyWith(color: Theme.of(context).colorScheme.primaryVariant),
          ),
          backgroundColor: Theme.of(context).bottomAppBarColor,
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: _headerNews(list.first),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => NewsCard(
                      news : list[index],
                      type: list[index].kategori.toUpperCase(),
                    ),
                childCount: list.length))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(context).backgroundColor,
        statusBarColor: Theme.of(context).backgroundColor));
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            if (state == null) {
              return Center(child: Text('Null block'));
            }
            if (state is Failure) {
              return Center(child: Text('Something went wrong'));
            }
            if (state is Loaded) {
              if (state.items == null || state.items.isEmpty) {
                return Text('No content avilable');
              } else {
                return _body(context,state.items);
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
