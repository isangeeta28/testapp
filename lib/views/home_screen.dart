
import 'package:flutter/material.dart';
import 'package:testapp/views/detail_screen.dart';

import 'data_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool showFab = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.orange,
        title: const Text("UserName"),
        elevation: 0.7,
        actions: const <Widget>[
          Icon(Icons.more_vert)
        ],
      ),
      body: DataScreen(),
    );
  }
}
