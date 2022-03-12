import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  String name;

  Heading({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'See All',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
