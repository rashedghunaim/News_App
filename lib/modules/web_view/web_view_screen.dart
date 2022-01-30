import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  static final routeName = './Web_View_Screen';
   String url = '';

  @override
  Widget build(BuildContext context) {
    url = ModalRoute.of(context)!.settings.arguments as String ;
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
