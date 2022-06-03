import 'package:flutter/material.dart';
import 'package:hands_on/pages/transactions_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PicPay Empresas',
        theme: ThemeData(
          backgroundColor: const Color.fromRGBO(5, 24, 28, 1),
        ),
        home: const TransactionsPage(),
      );
}
