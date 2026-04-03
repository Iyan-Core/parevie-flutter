import 'package:flutter/material.dart';

class AreaCard extends StatelessWidget {
  final String nama;
  final int jumlahToko;
  final VoidCallback? onTap;

  const AreaCard({
    super.key,
    required this.nama,
    required this.jumlahToko,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Card(
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Nama Area
              Row(
                children: [
                  const Icon(Icons.location_on, size: 20),
                  const SizedBox(width: 6),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // 🔹 Jumlah toko
              Text(
                "$jumlahToko toko",
                style: const TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 12),

              // 🔹 Tombol aksi
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onTap,
                      child: const Text("Buka Area"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
