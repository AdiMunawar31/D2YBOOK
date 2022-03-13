import 'package:d2ybook/models/books.dart';
import 'package:d2ybook/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class PopularBookMobile extends StatefulWidget {
  const PopularBookMobile({Key? key}) : super(key: key);

  @override
  State<PopularBookMobile> createState() => _PopularBookMobileState();
}

class _PopularBookMobileState extends State<PopularBookMobile> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final Books book = booksList[index];
            return book.isPopular == true
                ? InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(book: book);
                      }));
                    },
                    child: SizedBox(
                      width: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.asset(book.image),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 4.0),
                                child: Column(
                                  children: [
                                    Text(
                                      book.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      book.author,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                : Container();
          },
          itemCount: booksList.length,
        ),
      ),
    );
  }
}
