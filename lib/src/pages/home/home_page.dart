import 'package:flutter/material.dart';
import 'package:project_qr_solutions/src/services/providers/db_provider.dart';
import 'package:provider/provider.dart';

import 'package:project_qr_solutions/src/pages/creator/creator_page.dart';
import 'package:project_qr_solutions/src/pages/history/history_page.dart';
import 'package:project_qr_solutions/src/widgets/custom_scan_button.dart';
import 'package:project_qr_solutions/src/services/providers/ui_state.dart';
import 'package:project_qr_solutions/src/pages/settings/settings_page.dart';
import 'package:project_qr_solutions/src/widgets/custom_navigation_button.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int _pageIndex = 0;

  final screens = [
    const CreatorPage(),
    const HistoryPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final uiState = Provider.of<UiState>(context);
    _pageIndex = uiState.indexSelected;

    DBProvider.db.database;

    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: screens,
      ),
      bottomNavigationBar: const CustomNavigationButton(),
      floatingActionButton: const CustomScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
