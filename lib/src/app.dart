import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/src/blocks/stories_provider.dart';
import 'screens/news_list.dart';
import 'blocks/stories_bloc.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return StoriesProvider(
      child: MaterialApp(
        title: 'News',
        home: NewsList(),
      ),
    );
  }
}
