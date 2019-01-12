import 'package:flutter/material.dart';
import 'package:flutter_app/demo/i18n/map/flutter_localizations.dart';
import 'package:flutter_app/demo/i18n/intl/fluttter_localizations_intl.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text('${locale.languageCode}',style: TextStyle(fontSize: 32.0),),
             Text(locale.toString(),style: TextStyle(fontSize: 32.0),),
//             Text(FlutterLocalization.of(context).title,style: TextStyle(fontSize: 32.0),),
             Text(FlutterLocalizationsIntl.of(context).greet("刘彪"),style: TextStyle(fontSize: 32.0),),
          ],
        ),
      ),
    );
  }
}
