import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _counter2 = 0;

  void decrementCounter() {
    setState(() {
      _counter2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          const Text('this is profile screen'),
          Text('this is profile counter $_counter2'),
          ElevatedButton(
            onPressed: decrementCounter,
            child: const Text('Press Me'),
          )
        ],
      ),
    );
  }
}
