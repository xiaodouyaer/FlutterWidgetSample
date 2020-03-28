import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/widghtsample.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Sample'),
        ),
        body: Center(
          child: ViewPager(),
        ),
      ),
    );
  }
}

class ViewPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewPagerState();
  }
}

class _ViewPagerState extends State<ViewPager> {
  int _currentPageIndex = 0;
  var _pageController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: _pageChange,
        controller: _pageController,
        itemBuilder: (context, index) {
          switch(index){
            case 1:
              return Widgets();
            case 2:
              return Widgets();
            case 3:
              return Widgets();
          }
          return Widgets();
        },
        itemCount: 3,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.apps), title: Text("Widght")),
          BottomNavigationBarItem(
              icon: Icon(Icons.aspect_ratio), title: Text("Layout")),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_cafe), title: Text("Container"))
        ],
        currentIndex: _currentPageIndex,
        onTap: onTap,
      ),
    );
  }

  // bottomnaviagtionbar 和 pageview 的联动
  void onTap(int index) {
    // 过pageview的pagecontroller的animateToPage方法可以跳转
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void _pageChange(int index) {
    setState(() {
      if (_currentPageIndex != index) {
        _currentPageIndex = index;
      }
    });
  }
}
