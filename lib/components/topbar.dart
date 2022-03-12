import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(CupertinoIcons.line_horizontal_3_decrease, size: 32),
        Text(
          'D2YBOOK',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Icon(CupertinoIcons.person_alt_circle_fill, size: 32),
      ],
    );
  }
}
