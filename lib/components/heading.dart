import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String name;

  const Heading({Key? key, required this.name}) : super(key: key);

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
