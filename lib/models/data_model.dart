import 'package:hive/hive.dart';
part 'data_model.g.dart';
@HiveType(typeId: 0)
class DataModel{
  @HiveField(0)
 final String name;
 @HiveField(1)
 final String mobileNumber;
 @HiveField(2)
 final String email;
 DataModel({required this.name, required this.mobileNumber, required this.email});
}