import 'package:flutter/material.dart';

class InputTransaksi extends StatefulWidget {
  const InputTransaksi({super.key});

  @override
  State<InputTransaksi> createState() => _InputTransaksiState();
}

class _InputTransaksiState extends State<InputTransaksi> {
  final controller = TextEditingController();

  void simpan() {
    final qty = int.tryParse(controller.text) ?? 0;

    // TODO: simpan ke DB
    print("Terjual: $qty");

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Terjual")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Jumlah terjual"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: simpan,
              child: const Text("Simpan"),
            )
          ],
        ),
      ),
    );
  }
}
