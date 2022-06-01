import 'package:flutter/material.dart';
import 'package:hands_on/home/home.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
    required this.itemsNum,
  }) : super(key: key);

  final int itemsNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StatusBar(itemsNum: itemsNum),
        HomeContent(itemsNum: itemsNum),
      ],
    );
  }
}
