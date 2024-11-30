import 'dart:io';

import 'package:flutter/material.dart';
import 'add_student_page.dart';
import 'db_helper.dart';
import 'student_model.dart';
import 'student_detail_page.dart';

class StudentListPage extends StatefulWidget {
  @override
  _StudentListPageState createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGridView = !isGridView;
              });
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Student>>(
        future: DBHelper().fetchStudents(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.data!.isEmpty) {
            return Center(child: Text('No students found.'));
          }
          return isGridView ? _buildGridView(snapshot.data!) : _buildListView(snapshot.data!);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddStudentPage()));
          if (result == true) {
            setState(() {}); // Refresh the list after adding a student
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildListView(List<Student> students) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];
        return ListTile(
          leading: Image.file(File(student.profilePic)),
          title: Text(student.name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StudentDetailPage(student: student)),
            );
          },
        );
      },
    );
  }

  Widget _buildGridView(List<Student> students) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StudentDetailPage(student: student)),
            );
          },
          child: Card(
            child: Column(
              children: [
                Image.file(File(student.profilePic), height: 100, width: 100),
                Text(student.name),
              ],
            ),
          ),
        );
      },
    );
  }
}
