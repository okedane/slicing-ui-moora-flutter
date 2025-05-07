import 'package:flutter/material.dart';
import 'package:ui_moora/screen/alternatif/alternatif_screen.dart';
import 'package:ui_moora/widget/header/custom_greeting_header_widget.dart';
import 'package:ui_moora/widget/jabatan/jabtan_widget.dart';

class JabatanAlternatifScreen extends StatefulWidget {
  const JabatanAlternatifScreen({super.key});

  @override
  State<JabatanAlternatifScreen> createState() =>
      _JabatanAlternatifScreenState();
}

class _JabatanAlternatifScreenState extends State<JabatanAlternatifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(58),
        child: SafeArea(child: CustumGreetingHederWidget()),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            JabatanWidget(
              jabatan: "Cheff",
              karyawan: "12",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlternatifScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
