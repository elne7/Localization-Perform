import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_button.dart';
import 'package:simple_shopping_app/widgets/custom_text.dart';
import 'package:simple_shopping_app/widgets/custom_text_form_field.dart';
import 'package:validators/validators.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  // Initialising a formkey to control the form validation
  GlobalKey<FormState> formKey = GlobalKey();

  // Initializing the textfields controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  bool hiddenPassword = true;
  bool hiddenConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Creating the app bar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          tr('title'),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey, // Giving the form key to the form
          child: ListView(
            children: [
              const SizedBox(height: 50),
              CustomText(text: tr('Sign_Up')),
              const SizedBox(height: 20),
              // Initializing the text form field
              CustomTextFormField(
                hintText: 'Full Name',
                controller: nameController,
                validator: (value) {
                  if (value != null) {
                    if (isLowercase(value[0])) {
                      return 'The first letter must be capitalized';
                    }
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'E-mail',
                controller: emailController,
                validator: (value) {
                  if (value != null) {
                    if (!value.contains('@')) {
                      return 'The email maust have \'@\'';
                    }
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Password',
                controller: passController,
                obscureText: hiddenPassword,
                icon: IconButton(
                  onPressed: () {
                    hiddenPassword = !hiddenPassword;
                    setState(() {});
                  },
                  icon: Icon(
                      hiddenPassword ? Icons.visibility : Icons.visibility_off),
                ),
                validator: (value) {
                  if (value != null) {
                    if (value.length < 6) {
                      return 'The Password must have at least 6 characters';
                    }
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Confirm Password',
                controller: confirmPassController,
                obscureText: hiddenConfirmPassword,
                icon: IconButton(
                  onPressed: () {
                    hiddenConfirmPassword = !hiddenConfirmPassword;
                    setState(() {});
                  },
                  icon: Icon(hiddenConfirmPassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
                validator: (value) {
                  if (value != null) {
                    if (value != passController.text) {
                      return 'It is not same as the password';
                    }
                  }
                  return null;
                },
              ),
              const SizedBox(height: 50),
              // Initializing an ElevatedButton to submit
              CustomButton(formKey: formKey)
            ],
          ),
        ),
      ),
    );
  }
}
