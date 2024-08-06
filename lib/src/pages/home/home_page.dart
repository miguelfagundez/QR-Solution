import 'package:flutter/material.dart';
import 'package:project_qr_solutions/src/widgets/custom_navigation_button.dart';
import 'package:project_qr_solutions/src/widgets/custom_scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [],
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text('Home page'),
      ),
      bottomNavigationBar: const CustomNavigationButton(),
      floatingActionButton: const CustomScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
