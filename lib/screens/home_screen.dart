import 'package:d2ybook/containers/home_mobile.dart';
import 'package:d2ybook/containers/home_web.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return HomeWeb();
      } else {
        return HomeMobile();
      }
    });
  }
}
