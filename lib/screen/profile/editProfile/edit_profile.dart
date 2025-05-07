import 'package:flutter/material.dart';
import 'package:ui_moora/screen/profile/profile_screen.dart';
import 'package:ui_moora/style/colors/colors.dart';
import 'package:ui_moora/widget/button/button_widget.dart';
import 'package:ui_moora/widget/textField/textField_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ed"), actions: const []),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 64,
                backgroundImage: const NetworkImage(
                  "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044979/nr7gt66alfhmu9vaxu2u.png",
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35.0),
              textField(hintText: "Nama Panjang"),
              const SizedBox(height: 10.0),
              textField(hintText: "Jabatan"),
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
