import 'package:flutter/material.dart';
import 'package:flutter_app/demo/hello_demo.dart';
import 'package:flutter_app/demo/sliver_demo.dart';
import 'package:flutter_app/demo/navigator_demo.dart';
import 'package:flutter_app/demo/form_demo.dart';
import 'package:flutter_app/demo/material_component.dart';
import 'package:flutter_app/demo/state/manage_statement_demo.dart';
import 'package:flutter_app/demo/state/manage_statement_one_demo.dart';
import 'package:flutter_app/demo/stream/stream_demo.dart';
import 'package:flutter_app/demo/rxdart/rxdart_demo.dart';
import 'package:flutter_app/demo/bloc/bloc_demo.dart';
import 'package:flutter_app/demo/http/http_demo.dart';
import 'package:flutter_app/demo/animation/animation_demo.dart';
import 'package:flutter_app/demo/i18n/i18n_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_app/demo/i18n/map/flutter_localizations.dart';
import 'package:flutter_app/demo/i18n/intl/fluttter_localizations_intl.dart';

main() =>
  runApp(
  CustomWidget()
  );


///需要修改数据继承StatefulWidget
///不需要修改数据继承StatelessWidget

class CustomWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
//      locale: Locale('en','US'),
      locale: Locale('zh','CN'),
//      localeResolutionCallback: (Locale locale,Iterable<Locale> supportedLocales){
//         return Locale('en','US');
//      },
      localizationsDelegates: [
        FlutterLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en','US'),
        Locale('zh','CN'),
      ],
      debugShowCheckedModeBanner: false,
//      home: Home(),
//      home: NavigatorDemo(),
      initialRoute: "/i18n",
      routes: {
        "/":(context) => Home(),
        "/about":(context) => Page(title: 'About'),
        "/form":(context) => FormDemo(),
        "/mdc":(context) => MaterialComponent(),
        "/state_management":(context) => ManageStatementDemo(),
        "/state_management_one":(context) => ManageStatementOneDemo(),
        "/stream":(context) => StreamDemo(),
        "/rxdart":(context) => RxDartDemo(),
        "/bloc":(context) => BlocDemo(),
        "/http":(context) => HttpDemo(),
        "/animation":(context) => AnimationDemo(),
        "/i18n":(context) => I18nDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
//        highlightColor: Colors.green,
        splashColor: Colors.blue,
        accentColor: Colors.red,
      ),
    );
  }

}

class Hello extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

}