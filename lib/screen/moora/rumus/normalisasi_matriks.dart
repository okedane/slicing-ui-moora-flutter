import 'package:flutter/material.dart';
import 'package:ui_moora/widget/nilai/list_nilai_widget.dart';

class NormalisasiMatriks extends StatefulWidget {
  const NormalisasiMatriks({super.key});

  @override
  State<NormalisasiMatriks> createState() => _NormalisasiMatriksState();
}

class _NormalisasiMatriksState extends State<NormalisasiMatriks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Normalisasi Matriks"),
        centerTitle: true,
        actions: const [],
      ),
      body: ListNilaiWidget(name: "Romadani", jabatan: "Cheff"),
    );
  }
}
