import 'package:class_project_ostad/rec_mian.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Navigation

/// Route mane holo Screen
// Route to Route Navigation (Screen to Screen)
// Navigator

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  CustomAlertDialog alertDialog = CustomAlertDialog();
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<String> recentsList = [
    '01234567890',
    '01987654321',
    '01234569810',
    '01890765322',
    '01324589098',
    '01234567890',
    '01987654321',
    '01234569810',
    '01890765322',
    '01324589098'
  ];

  List<String> subtitleList = [
    '+8801234567890 Oct 28 R...',
    '+8801987654321 Oct 25 D...',
    '+8801234569810 Oct 20 I...',
    '+8801890765322 Sep 26 R...',
    '+8801324589098 Sep 20 D...',
    '+8801234567890 Sep 18 I...',
    '+8801987654321 Sep 15 R...',
    '+8801234569810 Aug 28 D...',
    '+8801890765322 Aug 22 I...',
    '+8801324589098 Aug 20 R...'
  ];

  List<String> contactsList = [
    'Nahid',
    'Fariha',
    'Alam',
    'Sultana',
    'Rahat',
    'Afrin',
    'kobi',
    'nodi',
    'tara',
    'Akash'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Home')
      ),


      body: Center(
        child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CustomAlertDialog(),));},
            child: Text('Go to profile')),
      ),





    ); // Scaffold end.
  }
}
