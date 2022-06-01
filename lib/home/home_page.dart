import 'package:flutter/material.dart';
import 'package:hands_on/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HandsOn'),
      ),
      body: const HomeView(itemsNum: 9),
    );
  }
}
