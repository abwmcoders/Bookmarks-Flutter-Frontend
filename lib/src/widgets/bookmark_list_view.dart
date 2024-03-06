import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import '../util/navigator.dart';

class BookmarkListItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () => navigateToViewBookmarkPage(bookmark, context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(bookmark.title, style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 6),
                Text(bookmark.link, style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
            Hero(tag: bookmark.link, child: Icon(Icons.star, size: 40))
          ],
        ),
      ),
    );
  }
}
