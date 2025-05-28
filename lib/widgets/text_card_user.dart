import 'package:flutter/material.dart';

class TextCardUser extends StatelessWidget {
  // 1 --  ADD ATTRIBUTES YOU WANT TO CUSTOMIZE -- YOU CAN ADD MORE HERE
  final String label;
  final String value;
  final Color textColor;

  // 2 --  ADD in constructor
  const TextCardUser({
    super.key,
    required this.label,
    required this.value,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          // 3 --  Call the attribute
          TextSpan(
            text: label,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
          TextSpan(
            text: value,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
