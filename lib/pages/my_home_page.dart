import 'package:flutter/material.dart';
import 'package:new_app/widgets/user_card_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Align(alignment: Alignment.center, child: Text(title)),
      ),
      body: UserCard(),
    );
  }
}
