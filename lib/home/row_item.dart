import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  const RowItem({
    Key? key,
    required this.positon,
  }) : super(key: key);

  final int positon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[positon * 100],
      child: const SizedBox(
        width: 50,
      ),
    );
  }
}
