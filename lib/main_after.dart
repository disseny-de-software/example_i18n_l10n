import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
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
  final double _totalAmount = 2500.0; // US Dollars
  final DateTime _now = DateTime.now();
  /* not needed anymore
  final DateFormat _dateFormat = DateFormat.yMd();
  // DateFormat class from Intl, short format for dates
  final DateFormat _timeFormat = DateFormat.Hm();
  // only hours and minutes
   */

  double _convertEurosToDollarsIfNeeded(double amount) {
    const double exchangeRateUSDtoEUR = 0.985;
    if (Intl.getCurrentLocale().startsWith('en_US')) {
      return amount;
    } else if (Intl.getCurrentLocale().startsWith('de')) {
      return double.parse((exchangeRateUSDtoEUR * amount).toStringAsFixed(2));
      // round to 2 decimals
    } else {
      assert(false);
      return 0;
    }
  }

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
              Center(
                child: ListTile(
                  leading: ElevatedButton(
                    onPressed: () {
                      setState(() { S.load(const Locale('en','US')); });
                    },
                    child: Text(
                      S.of(context).myHomePageButtonEnglish,
                      style: const TextStyle(fontSize: 20),),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      setState(() { S.load(const Locale('de','DE')); });
                    },
                    child: Text(
                      S.of(context).myHomePageButtonGerman,
                      style: const TextStyle(fontSize: 20),),
                  ),
                ),
              ),
              const Text(""),
              Text(S.of(context).myHomePageListTitle),
              const Text(""),
              Text(S.of(context).myHomePageWelcome('John')),
              Text(S.of(context).myHomePageName('John', 'Doe')),
              Text(S.of(context).myHomePageNewMessages(_numMessages)),
              Text(S.of(context).myHomePageTotalAmount(_convertEurosToDollarsIfNeeded(_totalAmount))),
              Text(S.of(context).myHomePageCurrentDateTime(_now, _now)),
              // by default in en-US locale, 12/19/2025, 17:49
            ],
          )
      ),
    );
  }
}
