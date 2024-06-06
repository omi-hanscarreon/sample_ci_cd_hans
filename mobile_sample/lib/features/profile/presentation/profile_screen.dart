import 'package:flutter/material.dart';
import 'package:sample_ci_cd_hans/gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          const Text('this is profile screen'),
          Assets.images.payments.bpi.image(),
        ],
      ),
    );
  }
}
