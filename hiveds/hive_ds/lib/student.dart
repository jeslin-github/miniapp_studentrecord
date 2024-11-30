import 'package:hive/hive.dart';

part 'student.g.dart';

@HiveType(typeId: 0)
class Student {
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;

  @HiveField(2)
  String? profilePic;

  Student({required this.name, required this.age, this.profilePic});
}
