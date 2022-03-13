import 'package:d2ybook/components/button.dart';
import 'package:flutter/material.dart';

class WelcomeMobile extends StatelessWidget {
  const WelcomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset('assets/images/welcome.png')),
              Text('Find your',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              Text(' favorite books',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 16,
              ),
              Text('As of your favorite books are',
                  style: TextStyle(fontSize: 16)),
              Text('already here', style: TextStyle(fontSize: 16)),
              SizedBox(
                height: 32,
              ),
              MyButton(name: 'Lets Start')
            ],
          ),
        ),
      ),
    );
  }
}
