import 'package:flutter/material.dart';
import 'package:ui_moora/screen/profile/profile_screen.dart';
import 'package:ui_moora/style/colors/colors.dart';

class CustumGreetingHederWidget extends StatelessWidget {
  const CustumGreetingHederWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,

      title: Row(
        children: [
          Image.asset(
            "assets/logo.png",
            width: 70.0,
            height: 70.0,
            fit: BoxFit.fill,
          ),
          const Text(
            "Melita \n Kitchen",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            icon: Icon(
              Icons.account_circle_outlined,
              size: 40,
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
