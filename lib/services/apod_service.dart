import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/models/apod_model.dart';

class ApodService {
  Future<ApodModel> fetchApod() async {
    final response = await http.get(
      Uri.parse('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'),
    );

    if (response.statusCode == 200) {
      /// ADD THIS COMMENT: THROW IN CASE YOU WANT TO TRIGGER ERROR
      /// throw Exception('Failed to load album');
      /// REMOVE THE return ApodModel.fromJson
      return ApodModel.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception('Failed to load album');
    }
  }
}
