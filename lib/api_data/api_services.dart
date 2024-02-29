import 'dart:convert';
import 'package:asigment_app/api_data/model_api.dart';
import 'package:http/http.dart' as http;


class ModelPrayerService {
  static const String apiUrl = 'https://api.aladhan.com/v1/calendar/2017/4?latitude=51.508515&longitude=-0.1254872&method=2http';

  Future<List<ModelPrayer>> getPrayerTimes(int year, int month, double latitude, double longitude, int method) async {
    try {
      final response = await http.get(Uri.parse('$apiUrl$year/$month?latitude=$latitude&longitude=$longitude&method=$method'));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['data'];
        return data.map((json) => ModelPrayer.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load prayer times: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error loading prayer times: $e');
    }
  }
}
