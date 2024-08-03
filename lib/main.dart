import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:project_qr_solutions/l10n/l10n.dart';
import 'package:project_qr_solutions/src/pages/home/home_page.dart';
import 'package:project_qr_solutions/src/pages/history/history_page.dart';
import 'package:project_qr_solutions/src/pages/maps/maps_page.dart';
import 'package:project_qr_solutions/src/pages/settings/settings_page.dart';
import 'package:project_qr_solutions/src/pages/web/web_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Solutions',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomePage(),
        'web': (_) => const WebPage(),
        'history': (_) => const HistoryPage(),
        'maps': (_) => const MapsPage(),
        'settings': (_) => const SettingsPage()
      },
      locale: const Locale('en'), //uiProvider.getCurrentLocale,
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
