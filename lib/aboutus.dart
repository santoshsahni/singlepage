import 'package:flutter/material.dart';
class AboutUs extends StatefulWidget {
  String Query;
  AboutUs({this.Query});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.Query),
      ),
    );
  }
}
