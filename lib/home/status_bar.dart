import 'package:flutter/material.dart';
import 'package:hands_on/home/home.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key? key,
    required this.itemsNum,
  }) : super(key: key);

  final int itemsNum;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(itemsNum, (index) => RowItem(positon: index + 1))
            .reversed
            .toList(),
      ),
    );
  }
}
