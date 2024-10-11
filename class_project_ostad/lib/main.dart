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

      body:  Center(
        child: InkWell(
          child: Text('text button'),
        ),
      ),


    );

  }
}
