import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailHomeScreen extends StatefulWidget {
  final String title;
  final String url;
  DetailHomeScreen(this.title, this.url);

  @override
  _DetailHomeScreenState createState() => _DetailHomeScreenState();
}

class _DetailHomeScreenState extends State<DetailHomeScreen> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Kitabisa',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            isLoading == true
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
