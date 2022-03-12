import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          border: Border.all(width: 0.3),
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Row(
        children: [
          Icon(CupertinoIcons.search),
          SizedBox(width: 8),
          Text(
            'Search Book...',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
