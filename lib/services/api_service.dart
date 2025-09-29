import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character_model.dart';

class ApiService {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '2dfe23358236069710a379edd4c65a6b';

  Future<List<Character>> getPopularPeople() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/person/popular?api_key=$apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> results = data['results'];
        return results.map((json) => Character.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load characters: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load characters: $e');
    }
  }
}