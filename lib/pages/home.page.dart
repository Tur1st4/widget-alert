import 'package:flutter/material.dart';
import 'package:widget_alert/widgets/alert.widget.dart';

class HomePage extends StatefulWidget {
  final Function fn;

  HomePage({required this.fn});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool check = false;

  setCheck(bool checkState) {
    setState(() {
      check = checkState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Container(
        child: Center(
          child: Stack(
            children: [
              TextButton(
                child: Text('Alertar'),
                onPressed: () {
                  setState(() {
                    check = true;
                  });
                },
              ),
              check ? AlertWidget() : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
