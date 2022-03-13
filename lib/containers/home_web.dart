import 'package:d2ybook/components/popular_book_web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:d2ybook/components/heading.dart';
import 'package:d2ybook/components/newbook_list.dart';
import 'package:d2ybook/components/topbar.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopBar(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24.0),
                  width: MediaQuery.of(context).size.width / 3,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.search),
                      SizedBox(width: 8.0),
                      Text(
                        'Search Book...',
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
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
