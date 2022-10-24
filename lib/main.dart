import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Personal Expenses App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final titleController = TextEditingController();
  final ammoutController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Expenses'),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
               SizedBox(
                width: double.infinity,
                child: Card(
                  color: Colors.blueGrey,
                  child: Text('Card Placeholder'),
                ),
              ),
              UserTransactions(),
            ]),
      ),
    );
  }
}
