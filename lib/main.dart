import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_shopping_app/views/sign_up_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    // Adding EasyLocalization package
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
      path: 'lang',
      fallbackLocale: const Locale('en', 'US'), // Setting English as a defult language
      child: const SimpleShoppingApp(),
    ),
  );
}

class SimpleShoppingApp extends StatelessWidget {
  const SimpleShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Localising the app
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner:
          false, // Remove the debug sign from the screen
      title: 'Simple Shopping App',
      home: const SignUpView(), // Displaying the Home View page
    );
  }
}
