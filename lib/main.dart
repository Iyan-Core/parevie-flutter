import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'services/local_db_service.dart';
import 'services/backup_service.dart';
import 'core/theme.dart';
import 'screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init Hive
  await Hive.initFlutter();

  // Init DB
  await LocalDBService.init();
  await LocalDBService.seedData();
  
  // Init Backup
  await BackupService.init();
  await BackupService.cekAutoBackup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parevie MJ',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
