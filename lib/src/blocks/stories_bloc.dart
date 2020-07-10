import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_model.dart';
import '../resources/repository.dart';

class StoriesBloc {

  final _topIds = PublishSubject<List<int>>();
  final repository = Repository();
  Observable<List<int>> get topIds => _topIds.stream;
  
  fetchTopIds() async {
    final ids = await repository.fetchTopIds();
    _topIds.sink.add(ids);
  }

  dispose(){
    _topIds.close();
  }
}