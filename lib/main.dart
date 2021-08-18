import 'package:flutter/material.dart';
import 'package:widget_alert/pages/home.page.dart';

main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(fn: () {}),
    );
  }
}
