import 'package:flutter/material.dart';
import 'package:ui_moora/widget/nilai/list_nilai_widget.dart';

class MatriksTernormalisasi extends StatefulWidget {
  const MatriksTernormalisasi({super.key});

  @override
  State<MatriksTernormalisasi> createState() => _MatriksTernormalisasiState();
}

class _MatriksTernormalisasiState extends State<MatriksTernormalisasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matriks Ternomalisasi"),
        centerTitle: true,
        actions: const [],
      ),
      body: ListNilaiWidget(name: "Romadani", jabatan: "Cheff"),
    );
  }
}
