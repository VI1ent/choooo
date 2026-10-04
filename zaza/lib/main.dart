import 'package:flutter/material.dart';

import 'screens/1.dart';
import 'screens/2.dart';

//import 'screens/3.dart';
//import 'screens/4.dart';
//import 'screens/5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 164, 81),
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        // '/detail': (context) => const DetScreen(),
        // '/cart': (context) => const CartScreen(),
        // '/success': (context) => const SucScreen(),
      },
    );
  }
}
