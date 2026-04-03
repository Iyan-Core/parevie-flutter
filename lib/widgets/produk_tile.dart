import 'package:flutter/material.dart';

class ProdukTile extends StatelessWidget {
  final String namaProduk;
  final int qty;
  final String tglMasuk;
  final String lastCek;
  final VoidCallback? onTap;

  const ProdukTile({
    super.key,
    required this.namaProduk,
    required this.qty,
    required this.tglMasuk,
    required this.lastCek,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nama produk + qty
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  namaProduk,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("$qty pcs"),
              ],
            ),

            const SizedBox(height: 6),

            // Tanggal info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Masuk: $tglMasuk",
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
                Text("Cek: $lastCek",
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
