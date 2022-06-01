import 'package:flutter/material.dart';
import 'package:hands_on/home/home.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
    required this.itemsNum,
  }) : super(key: key);

  final int itemsNum;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children:
            List.generate(itemsNum, (index) => ColumnItem(positon: index + 1))
                .reversed
                .toList(),
      ),
    );
  }
}
