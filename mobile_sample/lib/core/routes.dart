import 'package:flutter/material.dart';
import 'package:sample_ci_cd_hans/features/home/presentation/home_screen.dart';
import 'package:sample_ci_cd_hans/features/profile/presentation/profile_screen.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      switch (settings.name) {
        case MyHomePage.routeName:
          final args = settings.arguments! as HomeScreenArgs;
          return MyHomePage(
            args: args,
          );
        case ProfileScreen.routeName:
          return const ProfileScreen();
      }
      return const Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.amber,
        body: Center(
          child: Text('no screen'),
        ),
      );
    },
  );
}
