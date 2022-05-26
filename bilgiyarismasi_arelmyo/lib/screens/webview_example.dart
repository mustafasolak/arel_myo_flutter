import 'dart:io';

import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebviewExample extends StatefulWidget {
  @override
  State<WebviewExample> createState() => _WebviewExampleState();
}

class _WebviewExampleState extends State<WebviewExample> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview'),
      ),
      body: WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
  }
}
