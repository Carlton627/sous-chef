import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Sous Chef',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sous Chef'),
        ),
        body: Center(
          child: Text(
            wordPair.asPascalCase,
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}