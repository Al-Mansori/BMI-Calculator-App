import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconName;
  final String label;
  // Color(0xff8d8e98)
  final Color color;
  const IconContent(
      {super.key,
      required this.iconName,
      required this.label,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: color,
          ),
        )
      ],
    );
  }
}
