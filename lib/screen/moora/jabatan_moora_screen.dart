import 'package:flutter/material.dart';
import 'package:ui_moora/screen/moora/moora_screen.dart';
import 'package:ui_moora/widget/header/custom_greeting_header_widget.dart';
import 'package:ui_moora/widget/jabatan/jabtan_widget.dart';

class JabatanMooraScreen extends StatefulWidget {
  const JabatanMooraScreen({super.key});

  @override
  State<JabatanMooraScreen> createState() => _JabatanMooraScreenState();
}

class _JabatanMooraScreenState extends State<JabatanMooraScreen> {
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MooraScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
