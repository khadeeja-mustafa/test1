import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleButtonScreen(),
    );
  }
}

class SimpleButtonScreen extends StatefulWidget {
  const SimpleButtonScreen({super.key});

  @override
  State<SimpleButtonScreen> createState() => _SimpleButtonScreenState();
}

class _SimpleButtonScreenState extends State<SimpleButtonScreen> {
  String displayText = "Press the button";

  void changeText() {
    setState(() {
      displayText = "Button pressed!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              displayText,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeText,
              child: const Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}
