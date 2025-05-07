import 'package:flutter/material.dart';

class JabatanWidget extends StatelessWidget {
  final String jabatan;
  final String? karyawan;
  final VoidCallback onPressed;
  const JabatanWidget({
    required this.jabatan,
    this.karyawan,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 7,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: onPressed,
            child: Card(
              color: index % 2 == 0 ? Colors.grey[100] : Colors.grey[300],
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: AssetImage("assets/melita.jpg"),
                ),
                title: Text(
                  jabatan,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:
                    karyawan != null
                        ? Row(
                          children: [
                            Icon(
                              Icons.people_alt_outlined,
                              size: 16,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Text("$karyawan karyawan"),
                          ],
                        )
                        : null,

                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
