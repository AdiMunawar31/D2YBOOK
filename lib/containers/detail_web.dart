import 'package:d2ybook/components/banner.dart';
import 'package:d2ybook/models/books.dart';
import 'package:d2ybook/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class DetailWeb extends StatelessWidget {
  final Books book;

  const DetailWeb({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: BannerBook(book: book)),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(book.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(height: 4.0),
                              Text(book.author,
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              SizedBox(height: 8.0),
                              Text('\$ ${book.price}',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red)),
                              SizedBox(height: 16.0),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return WelcomeScreen();
                                    }));
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                    child: Text(
                                      'Buy',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text('About the Book',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 4.0),
                  Text(book.description,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          letterSpacing: 2.0)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
