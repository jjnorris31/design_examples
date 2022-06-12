import 'package:design_examples/screens/basic_design.dart';
import 'package:design_examples/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        initialRoute: 'scroll_design',
        routes: {
          'scroll_design': (_) => const ScrollDesign(),
        }
    );
  }
}

