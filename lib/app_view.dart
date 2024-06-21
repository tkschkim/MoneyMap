import 'package:flutter/material.dart';
import 'screens/home/views/homescreen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MoneyMap",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
          primary: Colors.lightBlue,
          secondary: Colors.yellow,
          tertiary: Colors.orange
        )
      ),
      home: const HomeScreen(),
    );
  }
}