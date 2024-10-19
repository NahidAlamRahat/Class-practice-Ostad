import 'package:class_project_ostad/rec_mian.dart';
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

  CustomAlertDialog alertDialog = CustomAlertDialog();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


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

      appBar: AppBar(
        title: Text('Module 7, class 1-2-3'),
        backgroundColor: Colors.green,

      ),

     /* body: Center(
        child: Column(
          children: [
            
            SizedBox(height: 10,),
            
            ElevatedButton(onPressed: (){
              print('this is a Elevated Button');

            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  elevation: 50,
                  shadowColor:Colors.green,
                alignment: Alignment.topLeft,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(color: Colors.black,width: 3),
                  maximumSize: Size(100, 100),
                  textStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black,

                  ),
                  padding: EdgeInsets.only(top: 20),

                ),
                child: Text('Tap Now')),

            SizedBox(height: 10,),
            
            OutlinedButton(onPressed: (){
              print('this is a OutLine Button');
            },


                child: Text('Outline Button')),

            SizedBox(height: 10,),

            TextButton(onPressed: (){
              print('this is a Text Button');

            }, child: Text('Text Button')),

            InkWell(
              onDoubleTap: () {
                print('Noemal Text to Button');
              },
              child: Text('Normal Text'),
            )
            
          ],
        ),
      ),*/

/*
body: Center(
  child: Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ElevatedButton(onPressed: (){
       showModalBottomSheet(context: context,

           // isScrollControlled: true, // eta dile ekdom full-screen hoye  jabe.
          showDragHandle: true,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

           builder: (builder){
           return Column(
             children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('tile')
               ],
             ),
               Divider(
                 thickness: 4,
               ),
               Text('message')
             ],
           );
         }
           );


        

      },
          
          child: Text('Tap')),
    ],
  ),
),
*/

   /* body: Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelStyle: TextStyle(color: Colors.black),
          suffixIcon: Icon(Icons.person),
          prefixIcon: Icon(Icons.call),
          fillColor: Colors.amberAccent,
          filled: true,
          hintText: 'number',


          labelText: 'input Now',
        ),
         maxLength: 250,
         // obscureText: true, //

      ),
    ),*/


bottomNavigationBar: NavigationBar(
  elevation: 80,
selectedIndex: 1,
  indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4)),
  shadowColor: Colors.black,
  indicatorColor: Colors.cyan,

  destinations: [
    NavigationDestination(icon: Icon(Icons.home),label: 'Home', ),
    NavigationDestination(icon: Icon(Icons.email),label: 'Message', ),
    NavigationDestination(icon: Icon(Icons.person),label: 'person', )

]
),


      drawer: Drawer(
        elevation: 80,

        child: DrawerHeader(
            child: Text('Nahid Alam Rahat'),
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20))
        ),
      ),


/*
      body: Scrollbar(
        thickness: 10,
    interactive: true,


    child: SingleChildScrollView(

        child:Column(
        children: [
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),
          Text('Hello Word'),

        ],
      ),
      ),


      ),
*/


    body: ListView.builder(
      itemCount: 100,
        itemBuilder: (context, index) {
          return Text('Hello World $index');
        },

    ),



    ); // Scaffold end.

  }
}
