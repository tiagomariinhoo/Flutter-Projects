import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/page/view_bookmark_page.dart';
import 'package:my_bookmarks/util/navigation_util.dart';

import '../page/add_bookmark_page.dart';

class BookmarkListItemWidget extends StatelessWidget {
  Bookmark bookmark;
  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () => navigateToViewBookmarkPage(bookmark, context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookmark.title,
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              bookmark.link,
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      ),
    );
  }
}
