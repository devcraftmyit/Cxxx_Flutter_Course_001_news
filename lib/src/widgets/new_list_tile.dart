import 'dart:js';
import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../blocks/stories_provider.dart';

class NewsListTile extends StatelessWidget {
  final int itemId;

  NewsListTile({this.itemId});

  Widget build(context) {
    final bloc = StoriesProvider.of(context); 
    return StreamBuilder(
        stream: bloc.items,
        builder:
            (context, AsyncSnapshot<Map<int, Future<ItemModel>>> snapshot) {
          if (!snapshot.hasData) {
            Text('Stream Still Loading');
          }
          return FutureBuilder(
            future: snapshot.data[itemId],
            builder: (context, AsyncSnapshot<ItemModel> itemSnapshot) {
              if (!itemSnapshot.hasData) {
                Text('Still waiting for ItemModel $itemId');
              }
              return Text(itemSnapshot.data.title);
            },
          );
        });
  }
}
