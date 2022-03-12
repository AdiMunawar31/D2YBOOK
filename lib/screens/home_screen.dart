import 'package:d2ybook/components/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.line_horizontal_3_decrease, size: 32),
                  Text(
                    'D2YBOOK',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(CupertinoIcons.person_alt_circle_fill, size: 32),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SearchBox()
            ],
          ),
        ),
      ),
    );
  }
}
