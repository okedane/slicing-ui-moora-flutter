import 'package:flutter/material.dart';
import 'package:ui_moora/style/colors/colors.dart';
import 'package:ui_moora/widget/nilai/list_nilai_widget.dart';

class AlternatifScreen extends StatefulWidget {
  const AlternatifScreen({super.key});

  @override
  State<AlternatifScreen> createState() => _AlternatifScreenState();
}

class _AlternatifScreenState extends State<AlternatifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: const Text("Alternatif"),
        centerTitle: true,
        actions: const [],
      ),
      body: ListNilaiWidget(name: "Romadani", jabatan: "Cheff"),
    );
  }
}
