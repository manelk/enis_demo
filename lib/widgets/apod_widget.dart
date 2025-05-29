import 'package:flutter/material.dart';

class ApodWidget extends StatelessWidget {
  final String title;
  final String url;
  final String explanation;

  const ApodWidget({
    super.key,
    required this.title,
    required this.url,
    required this.explanation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text("Title : $title"),
          Text("Explanation: $explanation"),
          Image.network(url),
        ],
      ),
    );
  }
}
