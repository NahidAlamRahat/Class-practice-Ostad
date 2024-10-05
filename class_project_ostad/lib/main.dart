import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Hello());

}

class Hello extends StatelessWidget {  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Class project'),
      ),
     /* body: Center(
        child: Text('Hello Word this is a first app in ostad live class project ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
        ),

          ),

      ),*/

      // body:  
      //     Image.asset('asset/image/emoji.jpg',
      //       width: 50,
      //       height: 50,
      //       fit: BoxFit.cover,
      //       alignment: Alignment.center,
      //
      //     ),
      
      
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Text('hello '),
          Text('world'),

      Image.asset('asset/image/emoji.jpg',
              width: 300,
              height:300,
              fit: BoxFit.cover,
              alignment: Alignment.center,

            ),

        ],
      ),
      
      

    ),
  );

  }
}
