import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import 'bookmark_list_view.dart';

class BookmarksListWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookmarksList.length,
      itemBuilder: (BuildContext context, int index) {
        return BookmarkListItemWidget(bookmarksList[index]);
      },
    );
  }
}
