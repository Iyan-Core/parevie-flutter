class Transaksi {
  String id;
  String tokoId;
  String produkId;
  int qtyTerjual;
  DateTime tanggal;

  Transaksi({
    required this.id,
    required this.tokoId,
    required this.produkId,
    required this.qtyTerjual,
    required this.tanggal,
  });
}
