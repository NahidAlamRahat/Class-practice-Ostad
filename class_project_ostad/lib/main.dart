import 'package:class_project_ostad/rec_mian.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ListView, Gridview, ListTile, Form, GlobalKey, Key

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TabBar(
            dividerHeight: 0,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.green,
            tabs: [
              Text(
                'Recents',
                style: TextStyle(fontSize: 20, decoration: TextDecoration.none),
              ),
              Text(
                'Contacts',
                style: TextStyle(fontSize: 20),
              )
            ],
            indicator: BoxDecoration(),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            elevation: 10,
            child: Icon(
              Icons.dialpad,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        size: 20,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: '126 contacts',
                      hintStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),

                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      // Keeps hint text static
                      isDense: true,
                      // Reduces internal padding
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                      // Adjusts padding
                      errorStyle: TextStyle(
                        fontSize: 12,
                        height: 0.1, // Reduces space for error text
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter a value';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                    itemCount: recentsList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.white,
                        title: Text(recentsList[index]),
                        subtitle: Text(
                          subtitleList[index],
                          overflow: TextOverflow.ellipsis,
                        ),
                        leading: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            )),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          print('onTap $index');
                        },
                      );
                    },
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: contactsList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.white,
                        title: Text(contactsList[index]),
                        subtitle: Text(subtitleList[index]),
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        onTap: () {
                          print('onTap $index');
                        },
                      );
                    },
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    ); // Scaffold end.
  }
}
