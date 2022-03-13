import 'package:d2ybook/components/popular_book_web.dart';
import 'package:flutter/material.dart';
import 'package:d2ybook/components/heading.dart';
import 'package:d2ybook/components/newbook_list.dart';
import 'package:d2ybook/components/popularbook_list.dart';
import 'package:d2ybook/components/search_box.dart';
import 'package:d2ybook/components/topbar.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopBar(),
                SearchBox(),
                Heading(name: 'Neweast & Trending'),
                NewBookList(),
                Heading(name: 'Most Popular'),
                PopularBookMobile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
