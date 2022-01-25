import 'package:flutter/material.dart';
import 'package:uas_ecommerce_sendymaulana/config/app_router.dart';
import 'package:uas_ecommerce_sendymaulana/config/theme.dart';
import 'package:uas_ecommerce_sendymaulana/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: const HomeScreen(),
    );
  }
}
