import 'package:flutter/material.dart';
import 'package:new_app/services/apod_service.dart';
import 'package:new_app/widgets/apod_widget.dart';

class ApodPage extends StatelessWidget {
  const ApodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Text("hello")),
      ),
      body: FutureBuilder(
        future: ApodService().fetchApod(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("snapshot.data: ${snapshot.data}");
            return ApodWidget(title: "hello", explanation: "hello", url: "");
          } else if (snapshot.hasError) {
            print("snapshot.hasError: ${snapshot.error}");
            return Text("ERROR: no data found");
          } else {
            print("snapshot.connectionState: ${snapshot.connectionState}");
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
