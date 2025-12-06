import 'package:flutter/material.dart';
import 'package:flutterbasics_51/screens/24_midterm_signin.dart';
import 'package:flutterbasics_51/widgets/01_add_textformfields.dart';
import 'package:flutterbasics_51/widgets/02_button.dart';
import 'package:flutterbasics_51/widgets/03_image.dart';
import 'package:flutterbasics_51/widgets/04_apptheme.dart';

class Registrations extends StatefulWidget {
  const Registrations({super.key});

  @override
  State<Registrations> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registrations> {
  final lastCtrl = TextEditingController();
  final firstCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final courseCtrl = TextEditingController();
  final yearCtrl = TextEditingController();
  final deptCtrl = TextEditingController();
  final collegeCtrl = TextEditingController();

  void clearFields() {
    lastCtrl.clear();
    firstCtrl.clear();
    emailCtrl.clear();
    courseCtrl.clear();
    yearCtrl.clear();
    deptCtrl.clear();
    collegeCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.ravenTheme,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CustomImage(path: 'assets/header.png',),
              const SizedBox(height: 40),
              AddTextFormFields_01(
                label1: 'Last Name',
                hintText1: 'Enter last name',
                icon1: Icons.person,
                textController1: lastCtrl,
              ),
              const SizedBox(height: 12),
              AddTextFormFields_01(
                label1: 'First Name',
                hintText1: 'Enter first name',
                icon1: Icons.person_outline,
                textController1: firstCtrl,
              ),
              const SizedBox(height: 12),
              AddTextFormFields_01(
                label1: 'Email',
                hintText1: 'Enter email address',
                icon1: Icons.email,
                textController1: emailCtrl,
              ),
              const SizedBox(height: 12),
              AddTextFormFields_01(
                label1: 'Course',
                hintText1: 'Enter course',
                icon1: Icons.book,
                textController1: courseCtrl,
              ),
              const SizedBox(height: 12),
              AddTextFormFields_01(
                label1: 'Year',
                hintText1: 'Enter year level',
                icon1: Icons.calendar_today,
                textController1: yearCtrl,
              ),
              const SizedBox(height: 12),
              AddTextFormFields_01(
                label1: 'Department',
                hintText1: 'Enter department',
                icon1: Icons.apartment,
                textController1: deptCtrl,
              ),
              const SizedBox(height: 12),
              AddTextFormFields_01(
                label1: 'College',
                hintText1: 'Enter college',
                icon1: Icons.school,
                textController1: collegeCtrl,
              ),
              const SizedBox(height: 20),
              CustomButton(text: 'Clear', onPressed: clearFields),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Submit',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignIns()),
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