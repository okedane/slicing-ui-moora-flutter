import 'package:flutter/material.dart';
import 'package:ui_moora/screen/profile/profile_screen.dart';
import 'package:ui_moora/widget/button/button_widget.dart';
import 'package:ui_moora/widget/textField/textField_widget.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({super.key});

  @override
  State<EditPassword> createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Password"), actions: const []),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              textField(hintText: "Email"),
              const SizedBox(height: 10.0),
              textField(hintText: "Password"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: buttonWidget(
          label: "Update",
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
      ),
    );
  }
}
