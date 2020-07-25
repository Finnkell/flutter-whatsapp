import 'package:flutter/material.dart';
import 'package:whatsapp/config/config.dart';
import 'package:whatsapp/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      darkTheme: ThemeData(
          primaryColor: Colors.black38,
          accentColor: accentColorDark,
          brightness: Brightness.dark),
    );
  }
}
