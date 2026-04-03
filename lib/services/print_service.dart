import 'package:url_launcher/url_launcher.dart';

class PrintService {
  // ==============================
  // FORMAT NOTA PENJUALAN
  // ==============================
  static String generateNota({
    required String namaToko,
    required List<Map<String, dynamic>> items,
  }) {
    String text = "🧾 NOTA PENJUALAN\n";
    text += "====================\n";
    text += "Toko: $namaToko\n\n";

    for (var item in items) {
      text += "${item['nama']} x${item['qty']}\n";
    }

    text += "\n====================\n";
    text += "Terima kasih 🙏";

    return text;
  }

  // ==============================
  // KIRIM KE WHATSAPP
  // ==============================
  static Future<void> kirimWhatsApp({
    required String noHp,
    required String pesan,
  }) async {
    try {
      final url = Uri.parse(
        "https://wa.me/$noHp?text=${Uri.encodeComponent(pesan)}",
      );

      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw "Tidak bisa membuka WhatsApp";
      }
    } catch (e) {
      print("Error WA: $e");
    }
  }

  // ==============================
  // PRINT BLUETOOTH (SIMPLE STUB)
  // ==============================
  static Future<void> printBluetooth(String text) async {
    // 🔥 sementara dummy dulu biar build tidak error
    print("PRINT BLUETOOTH:");
    print(text);

    // Nanti bisa dihubungkan ke plugin:
    // blue_thermal_printer
  }
}
