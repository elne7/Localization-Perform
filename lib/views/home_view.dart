import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_drawer.dart';
import 'package:simple_shopping_app/widgets/custom_grid_view.dart';
import 'package:simple_shopping_app/widgets/custom_list_view.dart';
import 'package:simple_shopping_app/widgets/custom_page_view.dart';
import 'package:simple_shopping_app/widgets/custom_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        // Creating the app bar
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
}
