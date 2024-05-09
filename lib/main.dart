import 'package:flutter/material.dart';
import 'package:sandy/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sandy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        typography: Typography.material2021(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sandy'),
      debugShowCheckedModeBanner: false,
    );
  }
}
