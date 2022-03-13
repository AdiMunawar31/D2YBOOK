import 'package:d2ybook/models/books.dart';
import 'package:d2ybook/screens/detail_screen.dart';
import 'package:d2ybook/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class PopularBookList extends StatelessWidget {
  const PopularBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 8, right: 8, left: 8),
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final Books book = booksList[index];

        return book.isPopular == true
            ? InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(book: book);
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                        width: 60,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Image.asset(
                              book.image,
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              book.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              book.author,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '\$' + book.price,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
            : new Container();
      },
      itemCount: booksList.length,
    );
  }
}
