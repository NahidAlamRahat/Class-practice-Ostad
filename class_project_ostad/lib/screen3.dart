import 'package:class_project_ostad/screen4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen3'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                 Navigator.pushReplacementNamed(context, '/screen1');
                 },
                child: Text('Replacement')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen4');
                },
                child: Text('Go to Screen4')),
          ],
        ),
      ),
    );
  }
}
