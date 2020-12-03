import 'package:flutter/material.dart';
import 'package:my_bookmarks/page/bookmarks_page.dart';

void main() {
  runApp(MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BookmarksPage());
  }
}
