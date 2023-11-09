import 'package:flutter/material.dart';
import 'package:closet/views/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
          useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'My Calculation',
      ),
      title: 'Calculate App',
      /*
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),

       */
    );
  }
}
