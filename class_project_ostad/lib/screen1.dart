import 'package:class_project_ostad/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SetState();
  }
}

class SetState extends State<Stateful> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Counter value is $count'),
            ElevatedButton(
                onPressed: (){
              Navigator.pushNamed(context, '/screen2');
            },
                child: Text('go to screen2'))
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {


          setState(() {count++;});
        },
        child: Icon(Icons.add),
      ),




    );
  }
}
