import 'package:flutter/material.dart';
import 'package:imc_calculator/constraints.dart';
import 'package:imc_calculator/pages/calculadora_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kBackgroundColor,
        ),
      ),
      home: CalculadoraPage(),
    );
  }
}
