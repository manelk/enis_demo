import 'dart:math';

import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  String country = "england.png";

  List<String> listCountries = [
    "england.png",
    "china.png",
    "europe.png",
    "italy.png",
    "mexico.png",
  ];

  String countryImage = "england.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Country Page"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get random countries",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/$countryImage",
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.6,
            ),

            ElevatedButton(
              onPressed: () {
                int randomIndex = Random().nextInt(5);
                setState(() {
                  countryImage = listCountries[randomIndex];
                });
              },
              child: Text("Get random image"),
            ),
          ],
        ),
      ),
    );
  }
}
