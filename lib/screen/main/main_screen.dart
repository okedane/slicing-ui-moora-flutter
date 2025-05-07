import 'package:flutter/material.dart';
import 'package:ui_moora/screen/alternatif/jabatan_alternatif_screen.dart';
import 'package:ui_moora/screen/home/home_screen.dart';
import 'package:ui_moora/screen/kriteria/kriteria_screen.dart';
import 'package:ui_moora/screen/login/login_screen.dart';
import 'package:ui_moora/screen/moora/jabatan_moora_screen.dart';
import 'package:ui_moora/screen/peringkat/jabatan_peringkat_screen.dart';
import 'package:ui_moora/style/colors/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indexBottomNavBar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: switch (_indexBottomNavBar) {
        0 => const HomeScreen(),
        1 => const KriteriaScreen(),
        2 => const JabatanAlternatifScreen(),
        3 => const JabatanMooraScreen(),
        4 => const JabatanPeringkatScreen(),
        _ => const LoginScreen(),
      },
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // <- warna latar bawah navbar
        selectedItemColor: primaryColor, // <- warna icon/text yang aktif
        unselectedItemColor: Colors.grey, // <- warna icon/text yang tidak aktif
        currentIndex: _indexBottomNavBar,
        onTap: (value) {
          setState(() {
            _indexBottomNavBar = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_rounded),
            label: "Kriteria",
            tooltip: "Kriteria",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_2),
            label: "Alternatif",
            tooltip: "Alternatif",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: "Moora",
            tooltip: "Moora",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Peringkat",
            tooltip: "Star",
          ),
        ],
      ),
    );
  }
}
