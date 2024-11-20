import 'package:class_project_ostad/rec_mian.dart';
import 'package:flutter/cupertino.dart';

//Cupertino Design

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
       home: Cupertino(),
    );
  }
}

class Cupertino extends StatelessWidget {
  const Cupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle:Text('Cupertino-Design'),
        leading: Icon(CupertinoIcons.add),
        trailing: Icon(CupertinoIcons.arrow_up),
      ),

      child: Center(
       child: Column(
         children: [
           CupertinoButton(child: Text('Enable'),
               onPressed: (){},
           ),


           CupertinoButton.filled(child: Text('Enable'), onPressed: (){})

         ],
       ),
    ),


    );
  }
}

