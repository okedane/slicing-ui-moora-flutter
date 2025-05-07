import 'package:flutter/material.dart';
import 'package:ui_moora/widget/nilai/list_nilai_widget.dart';

class MatriksKeputusan extends StatefulWidget {
  const MatriksKeputusan({super.key});

  @override
  State<MatriksKeputusan> createState() => _MatriksKeputusanState();
}

class _MatriksKeputusanState extends State<MatriksKeputusan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matriks Keputusan"),
        centerTitle: true,
        actions: const [],
      ),
      body: ListNilaiWidget(name: "Romadani", jabatan: "Cheff"),
    );
  }
}
