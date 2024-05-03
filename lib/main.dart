import 'package:flutter/material.dart';
//import 'package:burgir/screens.dart';
import 'package:burgir/HomePage.dart';
import 'package:burgir/Page2.dart';
import 'package:burgir/Page3.dart';
import 'package:burgir/Page4.dart';
import 'package:burgir/Page5.dart';
import 'package:burgir/NoBurgir.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final FirstRoute page1 = FirstRoute();

  final SecondRoute page2 = SecondRoute();

  final ThirdRoute page3 = ThirdRoute();

  final FourthRoute page4 = FourthRoute();

  final FifthRoute page5 = FifthRoute();

  void openFirst() {
    setState(() {
     // currentPage = page1;
    });
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  final int initialPageIndex;

  HomePage({Key? key, this.initialPageIndex = 0}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentPageIndex;

  @override
  void initState() {
    super.initState();
    _currentPageIndex = widget.initialPageIndex;
  }

  void _selectPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
    Navigator.pop(context); // Close the drawer after selecting a page
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      FirstRoute(),
      SecondRoute(),
      ThirdRoute(),
      FourthRoute(),
      FifthRoute(),
      NoBurgirRoute()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            for (int i = 0; i < _pages.length; i++)
              ListTile(
                title: Text('Page ${i + 1}'),
                onTap: () => _selectPage(i),
              ),
          ],
        ),
      ),
      body: _pages[_currentPageIndex],
    );
  }
}


void navigateToPage(BuildContext context, int pageIndex) {
  final NavigatorState navigator = Navigator.of(context);
  navigator.popUntil((route) => route.isFirst); // Close all previous pages
  navigator.pushAndRemoveUntil(MaterialPageRoute(builder: (_) => HomePage(initialPageIndex:pageIndex)), (route) => false);

}


