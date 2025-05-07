import 'package:flutter/material.dart';
import 'package:ui_moora/screen/subKriteria/sub_kriteria_screen.dart';
import 'package:ui_moora/widget/header/custom_greeting_header_widget.dart';

class KriteriaScreen extends StatefulWidget {
  const KriteriaScreen({super.key});

  @override
  State<KriteriaScreen> createState() => _KriteriaScreenState();
}

class _KriteriaScreenState extends State<KriteriaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(58),
        child: SafeArea(child: CustumGreetingHederWidget()),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 8),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubKriteriaScreen(),
                        ),
                      );
                    },
                    child: Card(
                      color:
                          index % 2 == 0 ? Colors.grey[100] : Colors.grey[300],
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Text(
                            "C0$index",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        title: const Text(
                          "Kehadiran",
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
                              "30 %",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        trailing: Chip(
                          label: Text("Benefit"),
                          backgroundColor: Colors.green[200],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
