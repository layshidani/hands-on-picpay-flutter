import 'package:flutter/material.dart';

class TransactionListItemWidget extends StatelessWidget {
  const TransactionListItemWidget({
    Key? key,
  }) : super(key: key);

  final int itemsNum = 4;

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('@username'),
              subtitle: Text('Recebido por @user223'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      );
  }
}
