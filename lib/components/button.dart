import 'package:d2ybook/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;

  const MyButton({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return HomeScreen();
          }));
        },
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ));
  }
}
