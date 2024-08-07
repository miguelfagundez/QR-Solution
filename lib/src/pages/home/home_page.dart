import 'package:flutter/material.dart';
import 'package:project_qr_solutions/src/pages/creator/creator_page.dart';
import 'package:project_qr_solutions/src/pages/history/history_page.dart';
import 'package:project_qr_solutions/src/pages/settings/settings_page.dart';
import 'package:project_qr_solutions/src/services/providers/ui_state.dart';
import 'package:project_qr_solutions/src/widgets/custom_navigation_button.dart';
import 'package:project_qr_solutions/src/widgets/custom_scan_button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Home',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   actions: const [],
      //   backgroundColor: Colors.deepPurple,
      // ),
      body: InternalBodyPage(),
      bottomNavigationBar: CustomNavigationButton(),
      floatingActionButton: CustomScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class InternalBodyPage extends StatelessWidget {
  const InternalBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final uiState = Provider.of<UiState>(context);
    final index = uiState.indexSelected;

    switch (index) {
      case 0:
        return const CreatorPage();
      case 1:
        return const HistoryPage();
      case 2:
        return const SettingsPage();
      default:
        return const HistoryPage();
    }
  }
}
