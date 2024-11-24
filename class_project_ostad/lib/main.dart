import 'package:class_project_ostad/rec_mian.dart';
import 'package:class_project_ostad/screen2.dart';
import 'package:flutter/material.dart';

/// Wrap | MediaQuery | LayoutBuilder | OrientationBuilder

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cupertino(),
    );
  }
}

class Cupertino extends StatelessWidget {
  const Cupertino({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.sizeOf(context);
    print(mediaQuerySize.height);
    print(mediaQuerySize.width);
    print(mediaQuerySize.flipped); /// er mane holo Width take Height a dibe Height take Width a dibe.
    print(mediaQuerySize.longestSide);
    print(mediaQuerySize.shortestSide);
    print(mediaQuerySize.aspectRatio);

    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).highContrast);

    print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(
        title: Text('Module 11 class 1'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        /*child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          // etar mane holo upore niche koto tuku spacing hobe
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button2')),
            ElevatedButton(onPressed: () {}, child: const Text('Button3')),
            ElevatedButton(onPressed: () {}, child: const Text('Button4')),
            ElevatedButton(onPressed: () {}, child: const Text('Button5')),
            ElevatedButton(onPressed: () {}, child: const Text('Button6')),
            ElevatedButton(onPressed: () {}, child: const Text('Button7')),
            ElevatedButton(onPressed: () {}, child: const Text('Button8')),
          ],
        ),*/

        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
             return Text('${constraints.maxHeight}');
            },

      ),
    )
    );
  }
}
