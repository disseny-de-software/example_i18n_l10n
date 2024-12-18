// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de_DE locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de_DE';

  static String m0(date, time) => "Datum ${date} Zeit ${time}";

  static String m1(firstName, lastName) =>
      "Mein Name ist ${lastName}, ${firstName} ${lastName}";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: 'Sie haben 1 Nachricht', other: 'Sie haben ${howMany} Nachrichten')}";

  static String m3(total) => "Gesamt ${total} €";

  static String m4(name) => "Willkommen ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "myHomePageButtonEnglish":
            MessageLookupByLibrary.simpleMessage("Englisch"),
        "myHomePageButtonGerman":
            MessageLookupByLibrary.simpleMessage("Deutsch"),
        "myHomePageCurrentDateTime": m0,
        "myHomePageListTitle": MessageLookupByLibrary.simpleMessage(
            "Einige lokalisierte Zeichenfolgen"),
        "myHomePageName": m1,
        "myHomePageNewMessages": m2,
        "myHomePageTotalAmount": m3,
        "myHomePageWelcome": m4
      };
}
