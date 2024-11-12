import 'package:class_project_ostad/main.dart';
import 'package:class_project_ostad/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  late String dataPass ;
  Screen4({this.dataPass=''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen4'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/home', (predicate)=>false);
            },
            child: const Text('go to home')),
      ),
    );
  }
}
