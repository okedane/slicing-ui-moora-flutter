import 'package:flutter/material.dart';
import 'package:ui_moora/style/colors/colors.dart';

class KaryawanScreen extends StatefulWidget {
  const KaryawanScreen({super.key});

  @override
  State<KaryawanScreen> createState() => _KaryawanScreenState();
}

class _KaryawanScreenState extends State<KaryawanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: const Text("Karyawan"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.blueGrey[900]),
              ),
            ),
            const SizedBox(height: 10.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Cheff",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: index % 2 == 0 ? Colors.grey[100] : Colors.grey[300],
                    child: ListTile(
                      title: const Text(
                        "Romadani",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: const [
                          Icon(
                            Icons.qr_code_2_outlined,
                            size: 16,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4),
                          Text("2102310053"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
