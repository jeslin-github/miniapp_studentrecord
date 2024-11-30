import 'dart:io';

import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'student_model.dart';
import 'edit_student_page.dart';

class StudentDetailPage extends StatelessWidget {
  final Student student;
  StudentDetailPage({required this.student});

  Future<void> _deleteStudent(BuildContext context) async {
    final shouldDelete = await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Delete Student'),
        content: Text('Are you sure you want to delete this student?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text('Cancel')),
          TextButton(onPressed: () => Navigator.pop(ctx, true), child: Text('Delete')),
        ],
      ),
    );
    if (shouldDelete == true) {
      await DBHelper().deleteStudent(student.id!);
      Navigator.pop(context, true); // Return to previous screen with refresh
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditStudentPage(student: student)),
              );
              if (result == true) {
                Navigator.pop(context, true); // Return to refresh
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => _deleteStudent(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.file(File(student.profilePic), height: 150, width: 150),
            Text('Name: ${student.name}', style: TextStyle(fontSize: 20)),
            Text('Age: ${student.age}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
