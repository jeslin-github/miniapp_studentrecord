import 'package:flutter/material.dart';
import 'package:student_record_project/model/db_function.dart';
import 'package:student_record_project/screen/home_screen.dart';

class Flash_Screen extends StatefulWidget {
  const Flash_Screen({super.key});

  @override
  State<Flash_Screen> createState() => _Flash_ScreenState();
}

class _Flash_ScreenState extends State<Flash_Screen> {
  @override
  void initState() {
    callDelaty();
    getAllStudent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Image.network('https://picsum.photos/200/300')),
      ),
    );
  }

  callDelaty() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return const HomeScreen();
          //  HomeScreen();
        },
      ),
    );
  }
}
