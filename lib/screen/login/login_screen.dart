import 'package:flutter/material.dart';
import 'package:ui_moora/screen/main/main_screen.dart';
import 'package:ui_moora/style/colors/colors.dart';
import 'package:ui_moora/widget/button/button_widget.dart';
import 'package:ui_moora/widget/textField/textField_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    'Masuk Untuk Melanjutkan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  textField(hintText: "Email"),
                  const SizedBox(height: 10),
                  textField(hintText: "Password"),
                  const SizedBox(height: 20.0),
                  buttonWidget(
                    label: "Login",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
