import 'package:flutter/material.dart';
import 'package:kaikala/screen/swap_shift.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(body: SwapShift()),
    );
  }
}

