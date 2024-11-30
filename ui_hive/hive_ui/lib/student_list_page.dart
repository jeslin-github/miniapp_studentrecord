import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'student.dart';

class StudentListPage extends StatefulWidget {
  @override
  _StudentListPageState createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  late Box<Student> studentBox;

  @override
  void initState() {
    super.initState();
    studentBox = Hive.box<Student>('students');
  }

  void _addStudent() {
    final String name = _nameController.text;
    final int? age = int.tryParse(_ageController.text);
    if (name.isNotEmpty && age != null) {
      final newStudent = Student(name: name, age: age);
      studentBox.add(newStudent); // Add new student to the box
      _nameController.clear();
      _ageController.clear();
      setState(() {}); // Rebuild UI to reflect changes
    }
  }

  void _deleteStudent(int index) {
    studentBox.deleteAt(index); // Delete student from the box
    setState(() {}); // Rebuild UI to reflect changes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: Column(
        children: [
          // Form to add a new student
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Student Name'),
                ),
                TextField(
                  controller: _ageController,
                  decoration: InputDecoration(labelText: 'Student Age'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _addStudent,
                  child: Text('Add Student'),
                ),
              ],
            ),
          ),

          // List of students
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: studentBox.listenable(),
              builder: (context, Box<Student> box, _) {
                if (box.isEmpty) {
                  return Center(child: Text('No students added.'));
                }
                return ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    final student = box.getAt(index);
                    return ListTile(
                      title: Text(student!.name),
                      subtitle: Text('Age: ${student.age}'),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _deleteStudent(index), // Delete student
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
