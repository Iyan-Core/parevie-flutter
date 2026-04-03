import 'package:flutter/material.dart';

class TokoTile extends StatelessWidget {
  final String namaToko;
  final int jumlahProduk;
  final VoidCallback? onTap;

  const TokoTile({
    super.key,
    required this.namaToko,
    required this.jumlahProduk,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              namaToko,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "$jumlahProduk pcs",
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
