import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget {
  const RowItemWidget(
      {Key? key,
      required this.positon,
      required this.text,
      required this.icon,
      required this.isNew})
      : super(key: key);

  final int positon;
  final Icon icon;
  final String text;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: 130,
        height: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  color: Colors.green[700],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: isNew
                        ? Text(
                            'NOVO',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        : Text(''),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  icon,
                  Text(text),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
