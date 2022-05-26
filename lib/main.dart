import 'package:flutter/material.dart';
import 'package:singlepage/secondscreen.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new SecondScreen(),
    title: new Text('Apps, Web, Digital Marketing...',style: TextStyle(
      fontSize: 20,fontFamily: "Arial Rounded MT Bold"
    ),),
      image:Image.asset("images/krash it.png"),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.blue,
    );
  }
}
