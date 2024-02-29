import 'package:hive/hive.dart';
import 'package:hive/hive.dart';

import 'model_class.dart';

@HiveType(typeId: 0)
class ModelClass {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int age;
  @HiveField(2)
  final int phone;

  ModelClass({
    required this.name,
    required this.age,
    required this.phone,
  });
}
