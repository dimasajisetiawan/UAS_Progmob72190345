import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/src/commonWidget/customWidget.dart';
import 'package:flutter_news_app/src/models/newsResponseModel.dart';
import 'package:flutter_news_app/src/pages/newsDetail/bloc/bloc.dart';
import 'package:flutter_news_app/src/theme/theme.dart';

class NewsCard extends StatelessWidget {
  // final Article artical;

  final News news;

  final bool isVideoNews;
  final String type;
  const NewsCard(
      {Key key, this.news, this.isVideoNews = false, this.type = ''})
      : super(key: key);
  Widget _playWidget(BuildContext context) {
    return SizedBox(
      height: 20,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          height: 10,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).bottomAppBarColor),
          child: Icon(
            Icons.play_arrow,
            color: Theme.of(context).disabledColor,
            size: 3,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String urlFoto = 'https://picsum.photos/500/300?random=15';
    return InkWell(
      onTap: () {
        BlocProvider.of<DetailBloc>(context)
            .add(SelectNewsForDetail(news: news));
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                        color: Theme.of(context).primaryColor,
                        child: customImage(urlFoto,
                                fit: BoxFit.cover)),
                    isVideoNews ? _playWidget(context) : Container()
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(),
                Container(
                  height: 52,
                  child: Text(
                    news.judul_berita,
                    style: Theme.of(context).textTheme.bodyText1,
                    overflow: TextOverflow.fade,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        '$type',
                        style: AppTheme.h6Style.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        news.tanggal_berita,
                        style: AppTheme.subTitleStyle,
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
