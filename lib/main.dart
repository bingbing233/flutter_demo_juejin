import 'package:flutter/material.dart';
import 'package:flutter_juejin/pages/mine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "掘金demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomepageState();
  }
}

class _MyHomepageState extends State<MyHomepage> {

  late int _currentIndex;
  late Widget _currentBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentBody,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: bottomNavigationBarItem,
        onTap: (index){
          switch(index){
            case 5:_currentBody = const MinePage();
          }
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _currentIndex = 1;
      _currentBody = const MinePage();
    });
  }

  final List<BottomNavigationBarItem> bottomNavigationBarItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页",),
    const BottomNavigationBarItem(icon: Icon(Icons.center_focus_strong), label: "沸点"),
    const BottomNavigationBarItem(icon: Icon(Icons.search), label: "发现"),
    const BottomNavigationBarItem(icon: Icon(Icons.book), label: "小册"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "我")
  ];
}
