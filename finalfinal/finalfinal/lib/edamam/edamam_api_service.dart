import 'dart:convert';
import 'package:finalfinal/edamam/constants.dart';
import 'package:http/http.dart' as http;

class EdamamApiService {
  final String apiUrl = 'https://api.edamam.com/api/recipes/v2';

  Future<List<dynamic>> searchFoods(String query) async {
    const String appKey = EdamamConstants.searchAppKey;
    const String appID = EdamamConstants.searchAppID;
    final response = await http.get(
      Uri.parse('$apiUrl?type=public&q=$query&app_id=$appID&app_key=$appKey'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['hits'];
    } else {
      final Map<String, dynamic> data = json.decode(response.body);
      return data["hits"];
    }
  }

  getFoods() async {
    String query = "chicken";
    const String appKey = EdamamConstants.searchAppKey;
    const String appID = EdamamConstants.searchAppID;
    final response = await http.get(
      Uri.parse('$apiUrl?type=public&q=$query&app_id=$appID&app_key=$appKey'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['hits'];
    } else {
      final Map<String, dynamic> data = json.decode(response.body);
      return data["hits"];
    }
  }

  Future<List<dynamic>> getIngredients(String foodName, List<dynamic> foods) async {
    const String appId = EdamamConstants.foodDBappID;
    const String appKey = EdamamConstants.foodDBappKey;

    final response = await http.get(
      Uri.parse(
          'https://api.edamam.com/api/food-database/v2/parser?app_id=$appId&app_key=$appKey&ingr=$foodName'),
    );

    if (response.statusCode == 200) {
      foods = jsonDecode(response.body)['hints'];
      return foods;
    } else {
      throw Exception('Failed to load foods');
    }
  }
}
