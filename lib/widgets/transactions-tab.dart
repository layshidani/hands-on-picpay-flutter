import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransactionsTabWidget extends StatelessWidget {
  const TransactionsTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TabBar(
              tabs: [
                Tab(text: 'Últimas Vendas'),
                Tab(text: 'Vendas pelo Pix'),
              ],
            ),
          // body: const TabBarView(
          //   children: [
          //     Icon(Icons.directions_car),
          //     Icon(Icons.directions_transit),
          //     Icon(Icons.directions_bike),
          //   ],
          // ),
    );
  }
}
