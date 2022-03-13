import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
            isSaved ? CupertinoIcons.bookmark_fill : CupertinoIcons.bookmark),
        color: Colors.black,
        onPressed: () {
          setState(() {
            isSaved = !isSaved;
          });
        },
      ),
    );
  }
}
