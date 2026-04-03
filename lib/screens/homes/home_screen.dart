import 'package:flutter/material.dart';
import '../../services/local_db_service.dart';
import '../../widgets/area_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, List> groupedToko = {};

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    final tokoList = LocalDBService.getToko();

    Map<String, List> temp = {};

    for (var t in tokoList) {
      final area = t['area'];

      if (!temp.containsKey(area)) {
        temp[area] = [];
      }

      temp[area]!.add(t);
    }

    setState(() {
      groupedToko = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Kunjungan"),
      ),
      body: groupedToko.isEmpty
          ? const Center(child: Text("Belum ada data toko"))
          : ListView(
              padding: const EdgeInsets.all(16),
              children: groupedToko.entries.map((entry) {
                return AreaCard(
                  nama: entry.key,
                  jumlahToko: entry.value.length,
                  onTap: () {
                    // nanti buka list toko
                  },
                );
              }).toList(),
            ),
    );
  }
}
