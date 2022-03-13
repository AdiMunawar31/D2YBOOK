import 'package:d2ybook/components/banner.dart';
import 'package:d2ybook/models/books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Books book;

  DetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [BannerBook(book: book)],
          ),
        ),
      ),
    );
  }
}
