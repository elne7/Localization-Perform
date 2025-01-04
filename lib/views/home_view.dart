import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_grid_view.dart';
import 'package:simple_shopping_app/widgets/custom_list_view.dart';
import 'package:simple_shopping_app/widgets/custom_page_view.dart';
import 'package:simple_shopping_app/widgets/custom_text.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  bool lang = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
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
      ),
      // Creating the app bar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          tr('title'),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      // Creating the body of the app
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          // Make the page scrollable
          child: Column(
            children: [
              CustomText(text: tr('products')),
              const SizedBox(
                // Add space between widgets
                height: 5,
              ),
              CustomPageView(), // Display a page view
              CustomGridView(), // Display a grid view
              const SizedBox(
                height: 30,
              ),
              CustomText(text: tr('offers')),
              CustomListView(), // Display a list view
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

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
}
