import 'dart:async';
import 'dart:io';

import 'package:bicsom_task/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebview extends StatefulWidget {
  final NewsModel model;
  NewsWebview({Key key, this.model}) : super(key: key);

  @override
  _NewsWebviewState createState() => _NewsWebviewState();
}

class _NewsWebviewState extends State<NewsWebview> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  void dispose() {
    _controller = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports News'),
      ),
      body: WebView(
        initialUrl: widget.model.url.trim(),
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
