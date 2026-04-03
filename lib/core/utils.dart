import 'package:intl/intl.dart';

class Utils {
  // Format tanggal Indonesia
  static String formatTanggal(DateTime date) {
    return DateFormat('dd MMM yyyy', 'id_ID').format(date);
  }

  // Format angka
  static String formatRupiah(int angka) {
    final format = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    return format.format(angka);
  }

  // Generate ID unik sederhana
  static String generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}
