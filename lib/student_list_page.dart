import 'dart:io';
import 'package:flutter/material.dart';
import 'student_model.dart';
import 'db_helper.dart';
import 'add_student_page.dart';
import 'student_detail_page.dart';

class StudentListPage extends StatefulWidget {
  @override
  _StudentListPageState createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
  bool _isGridView = false;
  List<Student> _students = [];

  @override
  void initState() {
    super.initState();
    _loadStudents();
  }

  Future<void> _loadStudents() async {
    final students = await DBHelper.instance.getStudents();
    setState(() {
      _students = students;
    });
  }

  void _deleteStudent(int id) async {
    await DBHelper.instance.deleteStudent(id);
    _loadStudents();
  }

  void _showDeleteDialog(int id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Student'),
          content: Text('Are you sure you want to delete this student?'),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancel')),
            TextButton(
              onPressed: () {
                _deleteStudent(id);
                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildListView() {
    if (_students.isEmpty) {
      return Center(child: Text('No students available'));
    }
    return ListView.builder(
      itemCount: _students.length,
      itemBuilder: (context, index) {
        final student = _students[index];
        return ListTile(
          leading: CircleAvatar(backgroundImage: FileImage(File(student.imagePath))),
          title: Text(student.name),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentDetailPage(student: student),
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => _showDeleteDialog(student.id!),
          ),
        );
      },
    );
  }

  Widget _buildGridView() {
    if (_students.isEmpty) {
      return Center(child: Text('No students available'));
    }
    return GridView.builder(
      itemCount: _students.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final student = _students[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentDetailPage(student: student),
            ),
          ),
          child: GridTile(
            header: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () => _showDeleteDialog(student.id!),
              ),
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: FileImage(File(student.imagePath)),
            ),
            footer: Center(child: Text(student.name)),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
        actions: [
          IconButton(
            icon: Icon(_isGridView ? Icons.list : Icons.grid_view),
            onPressed: () {
              setState(() {
                _isGridView = !_isGridView;
              });
            },
          ),
        ],
      ),
      body: _isGridView ? _buildGridView() : _buildListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddStudentPage()),
          );
          if (result != null && result == true) {
            _loadStudents();
          }
        },
      ),
    );
  }
}
