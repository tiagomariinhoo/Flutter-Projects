import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewWebPageWidgetState();
  }
}

class _ViewWebPageWidgetState extends State<ViewWebPageWidget> {
  var _isLoadingWebPage = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        WebView(onPageFinished: (url) {
          setState(() {
            _isLoadingWebPage = false;
          });
        }, initialUrl: "https://google.com"),
        _isLoadingWebPage ? CircularProgressIndicator() : Container(),
      ],
    );
  }

}