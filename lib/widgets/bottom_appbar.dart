import 'package:flutter/material.dart';
import 'package:lawrental/screens/home_page.dart';
import 'package:lawrental/screens/messages_page.dart';

import '../screens/notification_page.dart';
import '../screens/searchpage.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

int selectedIndex = 0;
void navigateBottomBar(int index) {
  setState() {
    selectedIndex = index;
  }
}

final List<Widget> pages = [
  const HomePage(),
  const SearchPage(),
  const NotificationPage(),
  const MessagesPage(),
];

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.red,),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages'
            ),
          ]),
    );
  }
}
