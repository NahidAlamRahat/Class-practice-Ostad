import 'package:class_project_ostad/main.dart';
import 'package:class_project_ostad/screen1.dart';
import 'package:class_project_ostad/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen3(),
                  ));
            },
            child: Text('Home Screen')),
      ),
    );
  }
}
