import 'package:flutter/material.dart';
import 'package:sample_ci_cd_hans/features/profile/presentation/profile_screen.dart';

class HomeScreenArgs {
  final String title;

  HomeScreenArgs({
    required this.title,
  });
}

class MyHomePage extends StatefulWidget {
  static const String routeName = '/home-screen';

  const MyHomePage({super.key, required this.args});
  final HomeScreenArgs args;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    if (_counter >= 3) {
      Navigator.pushNamed(context, ProfileScreen.routeName);
    }
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.args.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
