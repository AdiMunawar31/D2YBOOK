import 'package:d2ybook/models/books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:d2ybook/components/save_button.dart';

class BannerBook extends StatelessWidget {
  final Books book;

  BannerBook({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey[50]),
      child: Stack(
        children: [
          Center(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 32.0),
                  height: MediaQuery.of(context).size.height / 3,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.asset(book.image)))),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      CupertinoIcons.back,
                      size: 24,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SaveButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
