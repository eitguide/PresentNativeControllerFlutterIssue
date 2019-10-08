import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const platform = const MethodChannel('nghianv/f');

  void callPresentViewControllerNative() async {
    await platform.invokeMethod('presentController');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                callPresentViewControllerNative();
              },
              child: Text('Present Native Controller'),
            ),
            Expanded(
              child: Container(
                color: CupertinoColors.activeOrange,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        print("HomePage didTap");
      },
    );
  }
}
