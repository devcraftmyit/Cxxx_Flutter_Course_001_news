import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../blocks/stories_provider.dart';

class NewsList extends StatelessWidget {
  Widget build(context) {
    final bloc = StoriesProvider.of(context);
    bloc.fetchTopIds(); 
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: buildList(bloc),
    );
  }

  Widget buildList(StoriesBloc bloc) {
    return StreamBuilder(
      stream: bloc.topIds,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text('Still waiting for the topIds v3');
        }
        return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, int index) {
              return Text (snapshot.data[index]);
            });
      },
    );
  }
}
