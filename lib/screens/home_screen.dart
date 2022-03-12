import 'package:d2ybook/components/heading.dart';
import 'package:d2ybook/components/newbook_list.dart';
import 'package:d2ybook/components/search_box.dart';
import 'package:d2ybook/components/topbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TopBar(),
              SearchBox(),
              Heading(name: 'Neweast & Trending'),
              NewBookList(),
              Heading(name: 'Most Popular'),
            ],
          ),
        ),
      ),
    );
  }
}
