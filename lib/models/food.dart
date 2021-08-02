import 'category.dart';
class Food {
  int id;
  String name;
  String urlImage;
  Duration duration;
  String complexity;
  List<String> ingredients = <String>[];
  int categoryId;
  Food({required this.id,
    required this.name,
    required this.urlImage,
    required this.duration,
    required this.complexity,
    required this.ingredients,
    required this.categoryId});
}