import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/src/commonWidget/customWidget.dart';
import 'package:flutter_news_app/src/theme/bloc/bloc.dart';
import 'package:flutter_news_app/src/theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  Widget _headerWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: customAdvanceNetworkImage(
                    'https://scontent.fjog3-1.fna.fbcdn.net/v/t39.30808-6/263475975_4703139009747900_3930746383014315094_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEolqpJLHrfOAyzdGT2pXYaY2DVdzH-6qZjYNV3Mf7qprYdfdKBB_r6SbbqF9zS6EpBWCzimtMz7EDknyKLX-gn&_nc_ohc=LsZaLyXPtxkAX-07FYF&_nc_oc=AQnThRTWRKq2W7cnmrze55kGFU97Ukz7X9enT4pKvxNGsQ-24M6l51a5ni4kAO7Zs6g&_nc_ht=scontent.fjog3-1.fna&oh=00_AT8ld7Em8nIaeZOtqjNnPnh_3RJKkIzrJoebX3kQNsQ9hA&oe=61C1A3F3'),
                backgroundColor: Theme.of(context).primaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Dimas Aji Setiawan',
                      style: AppTheme.h2Style
                          .copyWith(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('72190345', style: AppTheme.h5Style),
                  SizedBox(height: 5),
                  Text('Pemrograman Mobile', style: AppTheme.h5Style),
                  SizedBox(height: 5),
                  Text('Group A', style: AppTheme.h5Style),
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: <Widget>[
              _estimateWidget('Followers', '826'),
              _estimateWidget('Following', '251'),
              _estimateWidget('News Read', '81K'),
            ],
          ),
          SizedBox(height: 30),
          Divider()
        ],
      ),
    );
  }

  Widget _estimateWidget(String text, String count) {
    return Expanded(
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(count,
              style: AppTheme.h4Style.copyWith(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(text, style: AppTheme.h5Style),
        ],
      )),
    );
  }

  Widget _settingRow(
      BuildContext context, IconData icon1, String text, bool isEnable,
      {Color color = Colors.black, int index = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: isEnable
          ? Theme.of(context).primaryColor.withAlpha(100)
          : Theme.of(context).backgroundColor,
      child: Row(
        children: <Widget>[
          Icon(
            icon1,
          ),
          SizedBox(width: 10),
          Text(text,
              style: AppTheme.h4Style.copyWith(
                fontWeight: FontWeight.bold,
              )),
          Expanded(child: SizedBox()),
          isEnable == null
              ? Container()
              : Switch(
                  activeColor: Theme.of(context).primaryColor,
                  inactiveTrackColor: Theme.of(context).disabledColor,
                  onChanged: (value) {
                    if (index == 1) {
                      BlocProvider.of<ThemeBloc>(context)
                          .add(isEnable ? DarkMode() : LightMode());
                    }
                  },
                  value: isEnable,
                )
        ],
      ),
    );
  }

  Widget _logout(BuildContext context, IconData icon1, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: <Widget>[
          Icon(
            icon1,
            color: Theme.of(context).errorColor,
          ),
          SizedBox(width: 10),
          Text(text,
              style: AppTheme.h3Style.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).errorColor)),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            bool val = false;
            if (state is SelectedTheme) {
              val = state.themeType == ThemeType.Light ? true : false;
            }
            return SafeArea(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: _headerWidget(context),
                  ),
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _settingRow(
                            context, Icons.lightbulb_outline, 'Night', val,
                            index: 1),
                      ],
                    ),
                  ))
                ],
              ),
            );
          },
        ));
  }
}
