import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length + 1);
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
            fontSize: 50,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MylargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MylargeTitle extends StatefulWidget {
  const MylargeTitle({
    super.key,
  });

  @override
  State<MylargeTitle> createState() => _MylargeTitleState();
}

class _MylargeTitleState extends State<MylargeTitle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Text(
      'MyLargeTitle',
      style: TextStyle(fontSize: 40),
    );
  }
}
