// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Some localized strings:`
  String get myHomePageListTitle {
    return Intl.message(
      'Some localized strings:',
      name: 'myHomePageListTitle',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get myHomePageButtonEnglish {
    return Intl.message(
      'English',
      name: 'myHomePageButtonEnglish',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get myHomePageButtonGerman {
    return Intl.message(
      'German',
      name: 'myHomePageButtonGerman',
      desc: '',
      args: [],
    );
  }

  /// `Welcome {name}`
  String myHomePageWelcome(Object name) {
    return Intl.message(
      'Welcome $name',
      name: 'myHomePageWelcome',
      desc: '',
      args: [name],
    );
  }

  /// `My name is {lastName}, {firstName} {lastName}`
  String myHomePageName(Object firstName, Object lastName) {
    return Intl.message(
      'My name is $lastName, $firstName $lastName',
      name: 'myHomePageName',
      desc: '',
      args: [firstName, lastName],
    );
  }

  /// `{howMany, plural, zero{You don't have new messages} one{You have 1 message} other{You have {howMany} messages}}`
  String myHomePageNewMessages(int howMany) {
    return Intl.plural(
      howMany,
      zero: 'You don\'t have new messages',
      one: 'You have 1 message',
      other: 'You have $howMany messages',
      name: 'myHomePageNewMessages',
      desc: '',
      args: [howMany],
    );
  }

  /// `Date {date} Time {time}`
  String myHomePageCurrentDateTime(DateTime date, DateTime time) {
    final DateFormat dateDateFormat = DateFormat.yMd(Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    final DateFormat timeDateFormat = DateFormat.jm(Intl.getCurrentLocale());
    final String timeString = timeDateFormat.format(time);

    return Intl.message(
      'Date $dateString Time $timeString',
      name: 'myHomePageCurrentDateTime',
      desc: '',
      args: [dateString, timeString],
    );
  }

  /// `Total {total}`
  String myHomePageTotalAmount(Object total) {
    return Intl.message(
      'Total $total',
      name: 'myHomePageTotalAmount',
      desc: '',
      args: [total],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de', countryCode: 'DE'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
