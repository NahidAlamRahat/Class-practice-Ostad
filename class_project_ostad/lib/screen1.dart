import 'package:class_project_ostad/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),

      body: Center(
        child: ElevatedButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(),));},
            child: Text('Go to Screen2')),
      ) ,

    );
  }
}
