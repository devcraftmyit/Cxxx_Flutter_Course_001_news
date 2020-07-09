import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class NewsList extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('News')),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, int index) {
          return FutureBuilder(
            future: getFuture(),
            builder: (context, snapshot) {    
              return snapshot.hasData
                  ? Text('We have data $index')
                  : Text('Item has not yet been resolved $index');
            },
          );
        });
  }

  getFuture() {
    return Future.delayed(
      Duration(seconds: 2),
      () => 'Hi there d',
    );
  }
}
