import 'package:flutter/material.dart';
import 'package:ui_moora/screen/moora/rumus/matriks_keputusan.dart';
import 'package:ui_moora/screen/moora/rumus/matriks_ternormalisasi.dart';
import 'package:ui_moora/screen/moora/rumus/normalisasi_matriks.dart';
import 'package:ui_moora/style/colors/colors.dart';
import 'package:ui_moora/widget/card/card_widget.dart';

class MooraScreen extends StatefulWidget {
  const MooraScreen({super.key});

  @override
  State<MooraScreen> createState() => _MooraScreenState();
}

class _MooraScreenState extends State<MooraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: const Text("Moora"),
        centerTitle: true,
        actions: const [],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            cardWidget(),
            const SizedBox(height: 10.0),
            CardMoora(
              title: "Matriks Keputusan",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MatriksKeputusan()),
                );
              },
            ),
            CardMoora(
              title: "Normalisasi Matriks",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NormalisasiMatriks()),
                );
              },
            ),
            CardMoora(
              title: "Matriks Ternormalisasi Terbobot",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MatriksTernormalisasi(),
                  ),
                );
              },
            ),
            CardMoora(title: "Hitung Max Min & Yi", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class CardMoora extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CardMoora({required this.title, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 24),
        ),
      ),
    );
  }
}
