import 'package:flutter/material.dart';

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    Key? key,
    required this.positon,
  }) : super(key: key);

  final int positon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[positon * 100],
      child: const SizedBox(
        width: double.infinity,
        height: 100,
      ),
    );
  }
}
