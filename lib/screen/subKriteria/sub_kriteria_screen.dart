import 'package:flutter/material.dart';

class SubKriteriaScreen extends StatefulWidget {
  const SubKriteriaScreen({super.key});

  @override
  State<SubKriteriaScreen> createState() => _SubKriteriaScreenState();
}

class _SubKriteriaScreenState extends State<SubKriteriaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sub Kriteria"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: index % 2 == 0 ? Colors.grey[100] : Colors.grey[300],
                  child: ListTile(
                    title: const Text(
                      "Kurang",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.align_vertical_center_sharp,
                          size: 16,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "1-12",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    trailing: Chip(
                      label: Text("Bobot : 1"),
                      backgroundColor: Colors.green[200],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
