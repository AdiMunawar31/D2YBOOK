import 'package:d2ybook/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/welcome.png'),
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
              InkWell(
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
                      'Lets Start',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
