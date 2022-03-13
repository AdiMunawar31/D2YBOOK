import 'package:d2ybook/containers/welcome_mobile.dart';
import 'package:d2ybook/containers/welcome_web.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return WelcomeWeb();
      } else {
        return WelcomeMobile();
      }
    });
  }
}
