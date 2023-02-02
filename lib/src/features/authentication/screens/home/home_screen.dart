import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(title: const Text('Home'), backgroundColor: Colors.orange,),
      ),
    );
  }
}