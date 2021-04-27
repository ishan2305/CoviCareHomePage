import 'package:flutter/material.dart';
import 'package:covicarehomepage/Screen/home.dart';
import 'package:covicarehomepage/Screen/blogs.dart';
import 'package:covicarehomepage/Screen/medicine.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'CoviCare Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final appheading = [
    'Home',
    'Blogs',
    'Medicines and Oxygen',
  ];

  final tabs = [
    Home(),
    Blog(),
    Medicine(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
        ),
        title: Text(appheading[_currentIndex]),
        actions: [
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              label: 'Blog',
              icon: Icon(
                Icons.add_comment,
              )),
          BottomNavigationBarItem(
              label: 'Medicines',
              icon: Icon(
                Icons.local_grocery_store,
              ))
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
