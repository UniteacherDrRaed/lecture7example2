import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("example SimpleDialog"),
        titleTextStyle: const TextStyle(color:Colors.red),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: OutlinedButton.icon(onPressed: (){

      },
          icon:const Icon(Icons.update),
          label: const Text("confirm update")),
    );
  }
}

