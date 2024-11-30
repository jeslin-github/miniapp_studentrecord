import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'student.dart';
import 'student_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());

  await Hive.openBox<Student>('students'); // Open the box for students

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive Student App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentListPage(), // Navigate to the student list page
    );
  }
}
