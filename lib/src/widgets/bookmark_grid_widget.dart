import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import 'bookmark_grid_view.dart';

class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookmarksGridWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        itemCount: bookmarksList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.5, crossAxisCount: 2, crossAxisSpacing: 6),
        itemBuilder: (BuildContext context, int index) {
          return BookmarkGridItemWidget(bookmarksList[index]);
        },
      ),
    );
  }
}
