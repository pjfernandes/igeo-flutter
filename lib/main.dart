import 'package:flutter/material.dart';
import 'package:easy_web_view/easy_web_view.dart';

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'iGeo',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Roboto",
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 7, 163, 221),
      ),
      body: EasyWebView(
        src: 'https://igeo-app.herokuapp.com',
        //isHtml: false, // Use Html syntax
        isMarkdown: false, // Use markdown syntax
        convertToWidgets: false, // Try to convert to flutter widgets
      ),
    );
  }
}
