import 'package:class_project_ostad/rec_mian.dart';
import 'package:class_project_ostad/screen1.dart';
import 'package:class_project_ostad/screen2.dart';
import 'package:class_project_ostad/screen3.dart';
import 'package:class_project_ostad/screen4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Navigation

/// Route mane holo Screen
// Route to Route Navigation (Screen to Screen)
// Navigator
//StatelessWidget vs StatefulWidget

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeActivity(),
        '/screen1': (context) => Stateful(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
      },

      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 20,
            foregroundColor: Colors.pink,
            side: BorderSide(color: Colors.black),

          )
        )
      ),

      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  final String username;

  HomeActivity({this.username = ''});

  // CustomAlertDialog alertDialog = CustomAlertDialog();
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Text(username),
            ElevatedButton(
                onPressed: () {
                 Navigator.pushNamed(context, '/screen1');

                },
                child: const Text('Go to StatefulWidget'),

            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    color: Colors.amber,
                    width: 100,
                    height:100 ,
                  ),

                  Container(
                    color: Colors.blue,
                    width: 80,
                    height:80 ,
                  ),

                  Positioned(
                    
                    width: 20,
                    child: Container(
                      color: Colors.pink,
                      width: 60,
                      height:60 ,
                    ),
                  )
                ],
              ),
            )




          ],
        ),
      ),
    ); // Scaffold end.
  }
}
