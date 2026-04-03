static Future<void> seedData() async {
  if (getToko().isNotEmpty) return;

  final dataToko = [
    {
      "id": "1",
      "nama": "Toko Barokah",
      "area": "Ceper",
      "noHp": "628123456789"
    },
    {
      "id": "2",
      "nama": "Toko Makmur",
      "area": "Ceper",
      "noHp": "628987654321"
    },
    {
      "id": "3",
      "nama": "Toko Sejahtera",
      "area": "Jatinom",
      "noHp": "628111222333"
    }
  ];

  await set("toko", dataToko);
}
