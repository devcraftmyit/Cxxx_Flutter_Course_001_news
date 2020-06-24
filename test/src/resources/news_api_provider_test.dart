import 'package:flutter_test/flutter_test.dart';
import 'package:news/src/resources/news_api_provider.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:http/testing.dart';

void main() {
  test(
    'FetchTopIds returns a list of  [ ids ]',
    () async {
      final newsApi = NewsItemProvider();
      newsApi.client = MockClient(
        (request) async {
          return Response(json.encode([1, 2, 3, 4]), 200);
        },
      );
      // call the app with the above
      final ids = await newsApi.fetchTopIds(dynamic);
      expect(ids, [1, 2, 3, 4]);
    },
  );
  test(
    'Testing fetchItem returns an Item Model',
    () async {
      final newsApi = NewsItemProvider();
      newsApi.client = MockClient(
        (request) async {
          return Response(json.encode({'id': 123}), 200);
        },
      );
    },
  );
}
