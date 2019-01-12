import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class FlutterLocalization{
  final Locale locale;

  FlutterLocalization(this.locale);

  static Map<String,Map<String,String>> _localization = {
    'en':{
      'title':'hello',
    },
    'zh':{
      'title':'您好',
    }
  };

  String get title {
    return _localization[locale.languageCode]['title'];
  }

  static FlutterLocalization of(BuildContext context) {
    return Localizations.of<FlutterLocalization>(context, FlutterLocalization);
  }
}

class FlutterLocalizationsDelegate extends LocalizationsDelegate<FlutterLocalization>{

  FlutterLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<FlutterLocalization> load(Locale locale) {
    return SynchronousFuture<FlutterLocalization>(
      FlutterLocalization(locale)
    );
  }

  @override
  bool shouldReload(LocalizationsDelegate<FlutterLocalization> old) {
    return false;
  }

}