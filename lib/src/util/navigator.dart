import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import '../pages/add_bookmark.dart';
import '../pages/view_bookmark.dart';

void navigateToViewBookmarkPage(Bookmark bookmark, BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)),
  );
}

Future navigateToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => AddBookmarkPage()),
  );
}
