import 'package:flutter_test/flutter_test.dart';
import 'package:news/src/models/item_model.dart';
import 'package:news/src/resources/news_api_provider.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main() {
  test(
    'FetchTopIds returns a list of  [ ids ]',
    () {
      final newItemIds = NewsItemProvider();
      MockClient(request)
    },
  );
}
