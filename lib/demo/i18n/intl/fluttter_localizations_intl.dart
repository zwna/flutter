import 'package:flutter/material.dart';
import 'flutter_app_messages_all.dart';
import 'package:intl/intl.dart';

class FlutterLocalizationsIntl {
  static FlutterLocalizationsIntl of(BuildContext context) {
    return Localizations.of<FlutterLocalizationsIntl>(
        context, FlutterLocalizationsIntl);
  }

  static Future<FlutterLocalizationsIntl> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return FlutterLocalizationsIntl();
    });
  }

  String get title =>
      Intl.message("hello", name: 'title', desc: 'demo localizations');

  String greet(String name) => Intl.message('hello $name',
      name: 'greet', desc: 'greet someone', args: [name]);
}

class FlutterLocalizationsDelegate
    extends LocalizationsDelegate<FlutterLocalizationsIntl> {
  FlutterLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<FlutterLocalizationsIntl> load(Locale locale) {
    return FlutterLocalizationsIntl.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<FlutterLocalizationsIntl> old) {
    return false;
  }
}
