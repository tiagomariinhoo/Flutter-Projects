import 'package:flutter/material.dart';
import 'package:my_bookmarks/widget/view_web_page_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookmarkPage extends StatefulWidget {
  @override
  _ViewBookmarkPageState createState() => _ViewBookmarkPageState();
}

class _ViewBookmarkPageState extends State<ViewBookmarkPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View bookmark"),
      ),
      body: ViewWebPageWidget(),
    );
  }
}