// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(firstName, lastName) =>
      "My name is ${lastName}, ${firstName} ${lastName}";

  static String m1(howMany) =>
      "${Intl.plural(howMany, zero: 'You don\'t have new messages', one: 'You have 1 message', other: 'You have ${howMany} messages')}";

  static String m2(name) => "Welcome ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "myHomePageButtonEnglish":
            MessageLookupByLibrary.simpleMessage("English"),
        "myHomePageButtonGerman":
            MessageLookupByLibrary.simpleMessage("German"),
        "myHomePageListTitle":
            MessageLookupByLibrary.simpleMessage("Some localized strings:"),
        "myHomePageName": m0,
        "myHomePageNewMessages": m1,
        "myHomePageWelcome": m2
      };
}
