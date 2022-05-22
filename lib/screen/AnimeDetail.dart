import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class AnimeDetail extends StatelessWidget {
  final String title;
  final String price;
  final String imgPath;
  AnimeDetail(this.title, this.price, this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime Detail'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.settings))
        ],
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body:
          // new WebView(
          //   initialUrl: "detik.com",
          //   javascriptMode: JavascriptMode.unrestricted,
          // ),
          ListView(
        children: [Image.asset(this.imgPath)],
      ),
    );
  }
}
