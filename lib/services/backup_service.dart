import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'local_db_service.dart';

class BackupService {
  static Box? box;

  // ==============================
  // INIT
  // ==============================
  static Future<void> init() async {
    box = await Hive.openBox('backup_box');
  }

  // ==============================
  // AUTO BACKUP
  // ==============================
  static Future<void> autoBackup() async {
    final data = {
      "version": "1.0",
      "exportDate": DateTime.now().toIso8601String(),
      "toko": LocalDBService.getToko(),
      "produk": LocalDBService.getProduk(),
      "titipan": LocalDBService.getTitipan(),
      "transaksi": LocalDBService.getTransaksi(),
    };

    final json = jsonEncode(data);

    await box?.put("auto_backup", json);
    await box?.put("auto_backup_date", DateTime.now().toIso8601String());

    print("✅ Auto backup selesai");
  }

  // ==============================
  // CEK AUTO BACKUP
  // ==============================
  static Future<void> cekAutoBackup() async {
    final lastBackup = box?.get("auto_backup_date");

    if (lastBackup == null) {
      await autoBackup();
      return;
    }

    final last = DateTime.tryParse(lastBackup);
    final now = DateTime.now();

    if (last == null) {
      await autoBackup();
      return;
    }

    final beda = now.difference(last).inHours;

    // Backup tiap 24 jam
    if (beda >= 24) {
      await autoBackup();
    }
  }

  // ==============================
  // RESTORE DATA
  // ==============================
  static Future<void> restoreBackup() async {
    final json = box?.get("auto_backup");

    if (json == null) return;

    try {
      final data = jsonDecode(json);

      await LocalDBService.set("toko", data["toko"] ?? []);
      await LocalDBService.set("produk", data["produk"] ?? []);
      await LocalDBService.set("titipan", data["titipan"] ?? []);
      await LocalDBService.set("transaksi", data["transaksi"] ?? []);

      print("✅ Data berhasil di-restore dari backup");
    } catch (e) {
      print("❌ Gagal restore: $e");
    }
  }
}
