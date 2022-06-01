import 'package:flutter/material.dart';
import 'package:hands_on/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HandsOn',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      );
}
