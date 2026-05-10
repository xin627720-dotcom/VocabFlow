import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/flashcard_screen.dart';
import 'core/services/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  final storageService = StorageService();
  await storageService.init();

  runApp(
    ChangeNotifierProvider(
      create: (_) => storageService,
      child: const VocabFlowApp(),
    ),
  );
}

class VocabFlowApp extends StatelessWidget {
  const VocabFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '词汇流 - FREE高考英语',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const FlashcardScreen(),
    );
  }
}
