import 'package:flutter/material.dart';
import 'package:tester/page/appBar.dart';

class Home_ig extends StatefulWidget {
  const Home_ig({super.key});

  @override
  State<Home_ig> createState() => _Home_igState();
}

class _Home_igState extends State<Home_ig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 210,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              BarHome(),
            ],
          ),
        ),
      ),
      body: Center(child: Text('This is Home')),
    );
  }
}
