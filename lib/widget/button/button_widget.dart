import 'package:flutter/material.dart';
import 'package:ui_moora/style/colors/colors.dart';

class buttonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const buttonWidget({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
