import 'package:bicsom_task/home/home_page.dart';
import 'package:bicsom_task/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomePage(),
    Center(
      child: Text('Page 2'),
    ),
    Center(
      child: Text('Page 3'),
    ),
    Center(
      child: Text('Page 4'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(
            right: 10,
            top: MediaQuery.of(context).padding.top + 15,
            bottom: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomAppBar(),
          ),
        ),
        Expanded(child: _pages[_currentIndex])
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My Base',
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Trending',
            icon: Icon(
              Icons.flag,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
