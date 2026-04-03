import 'package:flutter/material.dart';

class KunjunganDetail extends StatelessWidget {
  const KunjunganDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Detail Kunjungan"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Roll On"),
              Tab(text: "20ml"),
              Tab(text: "30ml"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Roll On List")),
            Center(child: Text("20ml List")),
            Center(child: Text("30ml List")),
          ],
        ),
      ),
    );
  }
}
