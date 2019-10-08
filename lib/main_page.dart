import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const platform = const MethodChannel('nghianv/present_controller_native');

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
