import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/main_tabview/main_tabview.dart';
import 'package:food_delivery_app/view/onboarding/onboarding_view.dart';
import 'package:food_delivery_app/view/onboarding/startup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Baloo',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainTabView(),
    );
  }
}
