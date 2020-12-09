import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/util/navigation_util.dart';
import 'package:my_bookmarks/widget/bookmarks_list_widget.dart';

import 'add_bookmark_page.dart';

class BookmarksPage extends StatelessWidget {
  List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "https://google.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My bookmarks"),
      ),
      body: BookmarksListWidget(bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () {
          navigateToAddBookmarkPage(context);
        },
        label: Text("Add"),
      ),
    );
  }

  Widget _onFABPressed(BuildContext context) {
    return AddBookmarkPage();
  }
}
