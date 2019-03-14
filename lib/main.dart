import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube_favorites/api.dart';

import 'package:flutter_youtube_favorites/blocs/favorite_bloc.dart';
import 'package:flutter_youtube_favorites/blocs/videos_bloc.dart';
import 'package:flutter_youtube_favorites/screens/home.dart';

void main() {

  Api api = Api();
  api.search("eletro");

runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: BlocProvider(
        bloc: FavoriteBloc(),
          child: MaterialApp(
            title: 'FlutterTube',
            home: Home(),
            debugShowCheckedModeBanner: false,
          ),
      )
    );
  }
}
