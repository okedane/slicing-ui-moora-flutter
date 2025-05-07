import 'package:flutter/material.dart';
import 'package:ui_moora/style/colors/colors.dart';

class ListNilaiWidget extends StatelessWidget {
  final String name;
  final String jabatan;
  const ListNilaiWidget({required this.name, required this.jabatan, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 3,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
                Text(
                  "Divisi : $jabatan",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                  ),
                ),
                Divider(),
                Row(children: [Expanded(child: Text("Kehadiran")), Text("30")]),
                Row(
                  children: [Expanded(child: Text("Keterlambatan")), Text("4")],
                ),
                Row(children: [Expanded(child: Text("Lembur")), Text("12")]),
              ],
            ),
          ),
        );
      },
    );
  }
}
