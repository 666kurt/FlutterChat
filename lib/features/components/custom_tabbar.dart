import 'package:flutter/material.dart';
import 'package:flutter_chat/features/screens/contacts/contacts_screen.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _selectedTab = 0;

  final List<Widget> _screens = [
    ContactsScreen(),
    Center(child: Text("Message")),
    Center(child: Text("Menu")),
  ];

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedTab],
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 24,
              color: Color.fromRGBO(0, 0, 0, 0.04),
            )
          ],
        ),
        padding: EdgeInsets.only(bottom: 35, top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _changeTab(0),
              child: ImageIcon(
                AssetImage('assets/contacts.png'),
                color: _selectedTab == 0
                    ? Color.fromRGBO(154, 65, 254, 1)
                    : Color.fromRGBO(41, 24, 59, 1),
              ),
            ),
            GestureDetector(
              onTap: () => _changeTab(1),
              child: ImageIcon(
                AssetImage('assets/message.png'),
                color: _selectedTab == 1
                    ? Color.fromRGBO(154, 65, 254, 1)
                    : Color.fromRGBO(41, 24, 59, 1),
              ),
            ),
            GestureDetector(
              onTap: () => _changeTab(2),
              child: ImageIcon(
                AssetImage('assets/more.png'),
                color: _selectedTab == 2
                    ? Color.fromRGBO(154, 65, 254, 1)
                    : Color.fromRGBO(41, 24, 59, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
