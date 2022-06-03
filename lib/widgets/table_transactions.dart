import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hands_on/widgets/transactions_list_item.dart';

class TableTransactionsWidget extends StatelessWidget {
  const TableTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.green[700],
              indicatorColor: Colors.green[700],
              unselectedLabelColor: Colors.grey[700],
              tabs: [
                Tab(text: 'Últimas Vendas'),
                Tab(text: 'Vendas pelo PIX'),
              ],
            ),
            Expanded(
              child: const TabBarView(
                children: [
                  Icon(Icons.construction_outlined),
                  Icon(Icons.construction_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// listbuilder
