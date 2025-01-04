import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_shopping_app/methods/toggle_language.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adding drawer for side options
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(tr('sign_out')),
            subtitle: Text(tr('return')),
            trailing: IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              icon: const Icon(Icons.logout),
            ),
          ),
          ListTile(
            title: Text(tr('change_lang')),
            subtitle: Text(tr('switch')),
            trailing: IconButton(
              onPressed: () {
                toggleLanguage(context);
              },
              icon: const Icon(Icons.language),
            ),
          )
        ],
      ),
    );
  }
}
