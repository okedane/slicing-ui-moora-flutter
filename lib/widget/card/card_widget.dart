import 'package:flutter/material.dart';
import 'package:ui_moora/style/colors/colors.dart';

class cardWidget extends StatelessWidget {
  const cardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 160,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 120.0,
              height: 120.0,
              fit: BoxFit.fill,
            ),
            Text(
              "Pemilihan Karyawan \n Terbaik Melita Kitchen",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
          ],
        ),
      ],
    );
  }
}
