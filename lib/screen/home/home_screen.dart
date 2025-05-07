import 'package:flutter/material.dart';
import 'package:ui_moora/screen/home/widgets/info_box.dart';
import 'package:ui_moora/screen/karyawan/karyawan_screen.dart';
import 'package:ui_moora/widget/card/card_widget.dart';
import 'package:ui_moora/widget/header/custom_greeting_header_widget.dart';
import 'package:ui_moora/widget/jabatan/jabtan_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(58),
        child: SafeArea(child: CustumGreetingHederWidget()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            cardWidget(),
            const SizedBox(height: 10.0),
            Row(
              children: [
                InfoBox(
                  title: "Total Karyawan",
                  value: "156",
                  icon: Icons.bar_chart_rounded,
                ),
                const SizedBox(width: 10.0),
                InfoBox(
                  title: "Jabatan Aktif",
                  value: "12",
                  icon: Icons.business_center,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Daftar Jabatan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            JabatanWidget(
              jabatan: "Cheff",
              karyawan: "12",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KaryawanScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
