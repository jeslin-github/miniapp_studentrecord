import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'student_model.dart';
import 'db_helper.dart';

class AddStudentPage extends StatefulWidget {
  final Student? student;
  final bool isEdit;

  AddStudentPage({this.student, this.isEdit = false});

  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  File? _image;

  @override
  void initState() {
    super.initState();
    if (widget.isEdit && widget.student != null) {
      nameController.text = widget.student!.name;
      ageController.text = widget.student!.age.toString();
      _image = File(widget.student!.imagePath);
    }
  }

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  void _saveStudent() async {
    if (_formKey.currentState!.validate() && _image != null) {
      String name = nameController.text;
      int age = int.parse(ageController.text);

      if (widget.isEdit && widget.student != null) {
        Student updatedStudent = Student(id: widget.student!.id, name: name, age: age, imagePath: _image!.path);
        await DBHelper.instance.updateStudent(updatedStudent);
      } else {
        Student newStudent = Student(name: name, age: age, imagePath: _image!.path);
        await DBHelper.instance.insertStudent(newStudent);
      }

      Navigator.pop(context, true);
    } else if (_image == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please select an image')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.isEdit ? 'Edit Student' : 'Add Student')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the age';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              _image == null
                  ? Text('No image selected')
                  : CircleAvatar(
                      radius: 50,
                      backgroundImage: FileImage(_image!),
                    ),
              TextButton.icon(
                onPressed: _pickImage,
                icon: Icon(Icons.photo_library),
                label: Text('Pick Image'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveStudent,
                child: Text(widget.isEdit ? 'Update Student' : 'Add Student'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
