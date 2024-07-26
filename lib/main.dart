import 'package:flutter/material.dart';
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
      initialRoute: 'history',
      routes: {
        'home': (_) => const HomePage(),
        'web': (_) => const WebPage(),
        'history': (_) => const HistoryPage(),
        'maps': (_) => const MapsPage(),
        'settings': (_) => const SettingsPage()
      },
    );
  }
}
