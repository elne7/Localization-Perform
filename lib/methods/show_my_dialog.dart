// Initializing a function shows a dialog
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_shopping_app/views/home_view.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      // Display the dialog
      return AlertDialog(
        title: Text(tr('Sign_Up')),
        content: Text(tr('success')),
        actions: <Widget>[
          TextButton(
            child: Text(
              tr('enter'),
              style: const TextStyle(color: Colors.black),
            ),
            onPressed: () {
              // Navigate to the home page
              Navigator.push(
                context,
                // Adding fade animation with page transition
                PageTransition(
                  duration: const Duration(seconds: 1),
                  type: PageTransitionType.fade,
                  child: const HomeView(),
                ),
              );
            },
          ),
        ],
      );
    },
  );
}
