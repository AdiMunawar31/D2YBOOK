import 'package:d2ybook/components/banner.dart';
import 'package:d2ybook/containers/detail_mobile.dart';
import 'package:d2ybook/containers/detail_web.dart';
import 'package:d2ybook/models/books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Books book;

  const DetailScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWeb(book: book);
      } else {
        return DetailMobile(book: book);
      }
    });
  }
}
