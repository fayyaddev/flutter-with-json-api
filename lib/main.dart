import 'package:api_project/screens/second_screen.dart';
import 'package:api_project/screens/third_screen.dart';
import 'package:api_project/utils/theme.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myThemeData,
        initialRoute: '/second',
        
        routes: {
          '/': (context) => HomeScreen(),
          '/second': (context) => SecondScreen(),
          '/third': (context) => ThirdScreen(),
        });
  }
}
