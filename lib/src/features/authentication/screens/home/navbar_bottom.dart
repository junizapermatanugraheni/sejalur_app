import 'package:flutter/material.dart';

class NavbarBottom extends StatefulWidget {
  const NavbarBottom({Key? key}) : super(key: key);

  @override
  State<NavbarBottom> createState() => _NavbarBottomState();
}
class _NavbarBottomState extends State<NavbarBottom>{
  final int _currentIndex = 0;
  List<Widget> body = const[
    Icon(Icons.home),
    Icon(Icons.add_box_outlined),
    Icon(Icons.message),
    Icon(Icons.account_circle_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){

        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: 'Riwayat',
              icon: Icon(Icons.av_timer)
          ),
          BottomNavigationBarItem(
              label: 'Add',
              icon: Icon(Icons.add_box_outlined)
          ),
          BottomNavigationBarItem(
              label: 'Pesan',
              icon: Icon(Icons.message)
          ),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.account_box)
          ),
        ],
      ),
    );
  }
}