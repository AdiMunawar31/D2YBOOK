import 'package:d2ybook/components/banner_book.dart';
import 'package:d2ybook/models/books.dart';
import 'package:flutter/material.dart';

class DetailMobile extends StatelessWidget {
  final Books book;

  DetailMobile({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BannerBook(book: book),
              Padding(
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
                    Text('About the Book',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 4.0),
                    Text(book.description,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[850],
                            letterSpacing: 1.2)),
                    SizedBox(height: 16.0),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AlertDialog(
                              actions: [
                                ElevatedButton(
                                    child: Text("OK"),
                                    onPressed: () => Navigator.pop(context))
                              ],
                              content:
                                  Text('The book was successfully purchased'),
                              title: Text('Success',
                                  style: TextStyle(fontSize: 24.0)),
                            );
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Text(
                            'Buy',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
