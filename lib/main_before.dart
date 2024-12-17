import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // removes the red debug ribbon
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20),
        ),
      ),

      home: const MyHomePage(title: 'Demo i18n and l10n'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _numMessages = 2;
  final double _totalAmount = 2500.0;
  final DateTime _now = DateTime.now();
  final DateFormat _dateFormat = DateFormat.yMd();
  // DateFormat class from Intl, short format for dates
  final DateFormat _timeFormat = DateFormat.Hm();
  // only hours and minutes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(""),
              const Text("Some localized strings"),
              const Text(""),
              const Text('Welcome John'),
              const Text('My name is John, John Doe'),
              Text('You have $_numMessages messages'),
              // wrong: 0 messages, 1 messages, 2 messages...
              Text('Total \$$_totalAmount'),
              // first $ is dollars before amount and 1 decimal, like $2500.0
              Text('Date ${_dateFormat.format(_now)} Time ${_timeFormat.format(_now)}'),
              // by default in en-US locale, 12/19/2025, 17:49
            ],
          )
      ),
    );
  }
}
