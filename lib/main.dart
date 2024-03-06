import 'package:flutter/material.dart';

import 'src/pages/bookmarks_page.dart';

void main() {
  runApp(MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}