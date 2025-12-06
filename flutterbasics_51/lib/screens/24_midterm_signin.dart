import 'package:flutter/material.dart';
import 'package:flutterbasics_51/screens/24_midterm_registration.dart';
import 'package:flutterbasics_51/widgets/01_add_textformfields.dart';
import 'package:flutterbasics_51/widgets/02_button.dart';
import 'package:flutterbasics_51/widgets/03_image.dart';
import 'package:flutterbasics_51/widgets/04_apptheme.dart';

class SignIns extends StatefulWidget {
  const SignIns({super.key});


  @override
  State<SignIns> createState() => _SignInState();
}


class _SignInState extends State<SignIns> {
  final userCtrl = TextEditingController();
  final passCtrl = TextEditingController();


  void clearFields() {
    userCtrl.clear();
    passCtrl.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.ravenTheme,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomImage(path: 'assets/logo.png',),
              const Divider(
                thickness: 1,
                color: Colors.white24,
              ),
              const SizedBox(height: 40),
              AddTextFormFields_01(
                label1: 'Username',
                hintText1: 'Enter username',
                icon1: Icons.person,
                textController1: userCtrl,
              ),
              const SizedBox(height: 12),
              AddTextFormFields_01(
                label1: 'Password',
                hintText1: 'Enter password',
                icon1: Icons.lock,
                textController1: passCtrl,
                isPassword: true,
              ),
              const SizedBox(height: 20),
              CustomButton(text: 'Clear', onPressed: clearFields),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Registrations()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}