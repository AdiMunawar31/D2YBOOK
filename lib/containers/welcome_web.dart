import 'package:d2ybook/components/button.dart';
import 'package:flutter/material.dart';

class WelcomeWeb extends StatelessWidget {
  const WelcomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset('assets/images/welcome.png')),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Find your',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(' favorite books',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 24,
                  ),
                  Text('As of your favorite books are',
                      style: TextStyle(fontSize: 16)),
                  Text('already here', style: TextStyle(fontSize: 16)),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: MyButton(name: 'Lets Starts'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
