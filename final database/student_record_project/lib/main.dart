import 'package:flutter/material.dart';
import 'package:student_record_project/model/db_function.dart';
import 'package:student_record_project/screen/flash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initilaizeDataBase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.lightBlue[400],
        scaffoldBackgroundColor: const Color.fromARGB(255, 211, 184, 29),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Flash_Screen(),
    );
  }
}
