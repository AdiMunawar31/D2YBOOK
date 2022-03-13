import 'package:d2ybook/components/save_button.dart';
import 'package:d2ybook/models/books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailWeb extends StatelessWidget {
  final Books book;

  const DetailWeb({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(color: Colors.blueGrey[50]),
                          child: Center(
                              child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 32.0),
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4.0),
                                      child: Image.asset(book.image)))),
                        )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: IconButton(
                                        icon: Icon(
                                          CupertinoIcons.back,
                                          size: 24,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                    SaveButton()
                                  ],
                                ),
                                SizedBox(height: 16),
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
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return AlertDialog(
                                          actions: [
                                            ElevatedButton(
                                                child: Text("OK"),
                                                onPressed: () =>
                                                    Navigator.pop(context))
                                          ],
                                          content: Text(
                                              'The book was successfully purchased'),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0))),
                                      child: Text(
                                        'Buy',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 24.0),
                    Text('About the Book',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 16.0),
                    Text(book.description,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[850],
                            letterSpacing: 1.0)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
