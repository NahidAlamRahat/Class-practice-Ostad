import 'package:class_project_ostad/rec_mian.dart';
import 'package:class_project_ostad/screen2.dart';
import 'package:flutter/material.dart';

/// FractionallySizedBox | Aspect Ratio | Expanded | Flexible | SafeArea | Tooltip

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 11 class 1'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink,
      ),
      body: SizedBox(
        height: 300,
        width: 300,
        child: ColoredBox(
          color: Colors.black,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            // প্রস্থ parent-এর ৫০%
            heightFactor: 0.3,
            // উচ্চতা parent-এর ৩০%
            alignment: Alignment.bottomLeft,
            /// eta tokhon kaj kore jokhon ei Widget ti  onno r ektar bitore thakbe.
            ///
            child: ColoredBox(
              color: Colors.blue, // বক্সের রঙ
            ),
          ),
        ),
      ),
    );
  }
}
