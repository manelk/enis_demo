import 'package:http/http.dart' as http;

class ApodService {
  Future<http.Response> fetchApod() {
    return http.get(
      Uri.parse('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY'),
    );
  }
}
