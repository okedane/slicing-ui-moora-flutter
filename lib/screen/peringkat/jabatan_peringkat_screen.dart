import 'package:flutter/material.dart';
import 'package:ui_moora/screen/peringkat/peringkat_screen.dart';
import 'package:ui_moora/widget/header/custom_greeting_header_widget.dart';
import 'package:ui_moora/widget/jabatan/jabtan_widget.dart';

class JabatanPeringkatScreen extends StatefulWidget {
  const JabatanPeringkatScreen({super.key});

  @override
  State<JabatanPeringkatScreen> createState() => _JabatanPeringkatScreenState();
}

class _JabatanPeringkatScreenState extends State<JabatanPeringkatScreen> {
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
                  MaterialPageRoute(builder: (context) => PeringkatScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
