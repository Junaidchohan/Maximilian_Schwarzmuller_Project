import 'package:expenses__app/widgets/expense.dart';
import 'package:flutter/material.dart';


var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 61, 181),);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
      )
      ),
      home: const Expenses(),
    );
  }
}

