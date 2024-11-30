import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'student_model.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EditStudentPage extends StatefulWidget {
  final Student student;
  EditStudentPage({required this.student});

  @override
  _EditStudentPageState createState() => _EditStudentPageState();
}

class _EditStudentPageState extends State<EditStudentPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  File? _image;

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.student.name;
    _ageController.text = widget.student.age.toString();
    _image = File(widget.student.profilePic);
  }

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _updateStudent() async {
    if (_nameController.text.isNotEmpty && _ageController.text.isNotEmpty) {
      final updatedStudent = Student(
        id: widget.student.id,
        name: _nameController.text,
        age: int.parse(_ageController.text),
        profilePic: _image!.path,
      );
      await DBHelper().updateStudent(updatedStudent);
      Navigator.pop(context, true); // Return to refresh
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Student')),
      body: Padding(
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
            _image == null
                ? Text('No image selected.')
                : Image.file(_image!, height: 100),
            TextButton(
              onPressed: _pickImage,
              child: Text('Select Profile Picture'),
            ),
            ElevatedButton(
              onPressed: _updateStudent,
              child: Text('Update Student'),
            ),
          ],
        ),
      ),
    );
  }
}

extension on ImagePicker {
  getImage({required ImageSource source}) {}
}
