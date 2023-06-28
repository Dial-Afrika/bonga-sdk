import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {
  final String selectedUrl = "https://home.dialafrika.com/webchat/?apikey=a191dc5a-d5be-49f3-90b6-2d1b22d9c9cf&greeting=hi,&message=how%20can%20i%20help%20you";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWebView(
        selectedUrl: selectedUrl,
      ),
    );
  }
}

class MyWebView extends StatefulWidget {
  final String selectedUrl;

  MyWebView({required this.selectedUrl});

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.selectedUrl,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
