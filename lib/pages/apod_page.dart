import 'package:flutter/material.dart';
import 'package:new_app/services/apod_service.dart';
import 'package:new_app/widgets/apod_widget.dart';

class ApodPage extends StatelessWidget {
  const ApodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Text("APOD Page")),
      ),
      body: FutureBuilder(
        future: ApodService().fetchApod(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ApodWidget(
              title: snapshot.data!.title ?? "default value",
              explanation:
                  snapshot.data!.explanation ?? "default explanation value",
              url: snapshot.data!.hdurl ?? "default url value",
            );
          } else if (snapshot.hasError) {
            return Text("ERROR: no data found");
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
