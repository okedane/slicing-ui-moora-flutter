import 'package:flutter/material.dart';
import 'package:ui_moora/style/colors/colors.dart';

class InfoBox extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const InfoBox({
    required this.title,
    required this.value,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        width: 157,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(icon, size: 50.0, color: primaryColor),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
