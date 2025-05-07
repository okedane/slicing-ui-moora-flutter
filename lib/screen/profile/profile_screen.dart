import 'package:flutter/material.dart';
import 'package:ui_moora/screen/login/login_screen.dart';
import 'package:ui_moora/screen/profile/editPassword/edit_password.dart';
import 'package:ui_moora/screen/profile/editProfile/edit_profile.dart';
import 'package:ui_moora/style/colors/colors.dart';
import 'package:ui_moora/widget/button/button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: const Text("Profile"),
        centerTitle: true,
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044979/nr7gt66alfhmu9vaxu2u.png",
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                "Dhannie",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Manager",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Other Information"),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                child: const ListTile(
                  title: Text("Edit Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 24),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => EditPassword()),
                  );
                },
                child: const ListTile(
                  title: Text("Ubah Password"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined, size: 24),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: buttonWidget(
          label: "Logout",
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
              (route) => false,
            );
          },
        ),
      ),
    );
  }
}
