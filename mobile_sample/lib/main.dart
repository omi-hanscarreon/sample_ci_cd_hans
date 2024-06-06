import 'package:flutter/material.dart';
import 'package:sample_ci_cd_hans/core/routes.dart';
import 'package:sample_ci_cd_hans/features/home/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: MyHomePage.routeName,
      onGenerateRoute: generateRoute,
    );
  }
}
