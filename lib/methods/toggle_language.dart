import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

bool lang = true;

void toggleLanguage(BuildContext context) {
    if (lang) {
      lang = !lang;
      context.setLocale(
        const Locale('ar', 'EG'),
      );
    } else {
      lang = !lang;
      context.setLocale(
        const Locale('en', 'US'),
      );
    }
  }