import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_shopping_app/methods/show_my_dialog.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Checking if the form validation is correct
        if (formKey.currentState!.validate()) {
          showMyDialog(context);
        }
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: Text(
        tr('submit'),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
