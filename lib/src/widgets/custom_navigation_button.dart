import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: AppLocalizations.of(context)!.home, //'Home',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.create),
          label: AppLocalizations.of(context)!.creator,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.history),
          label: AppLocalizations.of(context)!.history,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          label: AppLocalizations.of(context)!.settings,
        )
      ],
    );
  }
}
