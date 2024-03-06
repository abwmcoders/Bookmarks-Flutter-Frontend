import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import '../widgets/bookmark_webview.dart';

class ViewBookmarkPage extends StatelessWidget {
  final Bookmark bookmark;

  ViewBookmarkPage(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookmark.title),
        actions: <Widget>[
          Hero(
            tag: bookmark.link,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.star),
            ),
          )
        ],
      ),
      body: ViewWebPageWidget(url: bookmark.link,),
    );
  }
}
