import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class NewsApiProvider {
  Client client = Client();
  final root = 'https://hacker-news.firebaseio.com/v0';

  fetchTopIds(dynamic) async {
    final response = await client.get('$root /topstories.json');
    final ids = json.decode(response.body);
    return ids;
  }

  fetchItem(int id) async {
    final response = await client.get('$root /item/id');
    final parsedJson = json.decode(response.body);
    return ItemModel.fromJson(parsedJson);
  }
}
