import 'dart:io';
import 'package:flutter/material.dart';
import 'student_model.dart';
import 'add_student_page.dart';

class StudentDetailPage extends StatelessWidget {
  final Student student;

  StudentDetailPage({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddStudentPage(student: student, isEdit: true),
                ),
              );
              if (result != null && result == true) {
                Navigator.pop(context, true);  // Return to the list to reload
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: FileImage(File(student.imagePath)),
              ),
            ),
            SizedBox(height: 20),
            Text('Name: ${student.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Age: ${student.age}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
