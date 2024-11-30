class Student {
  int? id;
  String name;
  int age;
  String imagePath;

  Student({this.id, required this.name, required this.age, required this.imagePath});

  // Convert a Student into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'imagePath': imagePath,
    };
  }

  // Convert a Map into a Student.
  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      age: map['age'],
      imagePath: map['imagePath'],
    );
  }
}
