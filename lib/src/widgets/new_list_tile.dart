import 'dart:js';
import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../blocks/stories_provider.dart';

class NewsListTile extends StatelessWidget {
  final int newsId;

  NewsListTile({this.newsId});

  Widget build(context) {
    final bloc = StoriesProvider.of(context);
    return StreamBuilder (
      stream: bloc.items,
      builder: (context, AsyncSnapshot<Map<int,Future<ItemModel>>> snapshot) {
        if (!snapshot.hasData ) {
          Text ('Stream Still Loading');
        }
      }
      );
  }
}
