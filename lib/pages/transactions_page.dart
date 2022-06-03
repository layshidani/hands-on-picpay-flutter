import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hands_on/widgets/row_item.dart';
import 'package:hands_on/widgets/summary.dart';
import 'package:hands_on/widgets/table_transactions.dart';
import 'package:http/http.dart' as http;

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // with TickerProviderStateMixin {
  // late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 246, 1),
        appBar: AppBar(
          title: const Text('Transações'),
          backgroundColor: const Color.fromRGBO(5, 24, 28, 1),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.attach_money_outlined),
          backgroundColor: Colors.green[700],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        body: Column(
          children: [
            const SummaryWidget(),
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    featRowItems.length,
                    (index) => RowItemWidget(
                        positon: index + 1,
                        text: featRowItems[index]['text'],
                        icon: featRowItems[index]['icon'],
                        isNew: featRowItems[index]['isNew'])).toList(),
              ),
            ),
            TableTransactionsWidget(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined),
              label: 'Extrato',
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: 'Cobrar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notificações',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Ajustes',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green[700],
          unselectedItemColor: Colors.black87,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  List featRowItems = [
    {'text': 'Pix', 'icon': Icon(Icons.construction_outlined), 'isNew': true},
    {
      'text': 'Pagar Boletos',
      'icon': Icon(Icons.construction_outlined),
      'isNew': true
    },
    {
      'text': 'Open Banking',
      'icon': Icon(Icons.construction_outlined),
      'isNew': true
    },
  ];

  Future<String> fetchResume() async {
    final uri = Uri.parse('http://ms-dojo-mobile-pj.ms.qa/api/v1/home');
    final response = await http.get(uri);

    print('Response code: $response.statusCode');

    return jsonDecode(response.body);
  }
}

// class FeatRowItem {
//   const FeatRowItem({
//    required this.text,
//     required this.icon,
//     required this.isNew
//   });

//   final Icon icon;
//   final String text;
//   final bool isNew;
// }

// class Resume {
//   double balance = 0;
//   double unavaliableBalance = 0;
//   double futureValue = 0;
//   List<LastSales> lastSales = [];

//   Resume.fromJson(Map<String, dynamic> json) {
//     this.balance = json['balance'];
//   }
// }

// class LastSales {
//   double amount = 0;
//   String consumer = '';
//   String consumer_avatar = '';
//   String received_by = '';
//   String date = '';
//   String type = '';

//   // LastSales
// }
