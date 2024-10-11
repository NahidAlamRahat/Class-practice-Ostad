import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Hello());

}

class Hello extends StatelessWidget {  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    home: HomeActivity(),
    );

  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(


      // body: Center(
      //   child: Text('Hello Word this is a first app in ostad live class project ',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 30,
      //         // letterSpacing: 14,
      //       wordSpacing: 5,
      //       decoration: TextDecoration.overline,
      //       overflow: TextOverflow.ellipsis
      //   ),
      //
      //     ),
      //
      // ),

      // body:
      //     Image.asset('asset/image/emoji.jpg',
      //       width: 50,
      //       height: 50,
      //       fit: BoxFit.cover,
      //       alignment: Alignment.center,
      //
      //     ),



      body:  Center(
        child: InkWell(
          child: Text('text button'),
        ),
      ),


    );

  }
}
