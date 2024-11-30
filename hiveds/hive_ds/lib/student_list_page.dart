
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'student.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StudentListPage extends StatefulWidget {
  @override
  _StudentListPageState createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
  late Box<Student> studentBox;

  @override
  void initState() {
    super.initState();
    studentBox = Hive.box<Student>('students');
  }

  void _addStudent() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    String? imagePath = pickedFile?.path;

    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Student'),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final name = nameController.text;
                final age = int.tryParse(ageController.text);
                if (name.isNotEmpty && age != null) {
                  final student = Student(name: name, age: age, profilePic: imagePath);
                  studentBox.add(student);
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _deleteStudent(int index) {
    studentBox.deleteAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Records'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _addStudent,
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: studentBox.listenable(),
        builder: (context, Box<Student> box, _) {
          if (box.isEmpty) {
            return Center(child: Text('No students added'));
          }
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              final student = box.getAt(index);
              return ListTile(
                leading: student?.profilePic != null
                    ? CircleAvatar(backgroundImage: FileImage(File(student!.profilePic!)))
                    : CircleAvatar(child: Icon(Icons.person)),
                title: Text(student!.name),
                subtitle: Text('Age: ${student.age}'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteStudent(index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
